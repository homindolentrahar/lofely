import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/fragments/chats_fragment.dart';
import 'package:linkedin_clone/fragments/connections_fragment.dart';
import 'package:linkedin_clone/fragments/home_fragment.dart';
import 'package:linkedin_clone/fragments/jobs_fragment.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/custom_icon_button.dart';
import 'package:linkedin_clone/widgets/floating_post_button.dart';
import 'package:linkedin_clone/widgets/main_drawer.dart';
import 'package:linkedin_clone/widgets/search_bar.dart';
import 'package:linkedin_clone/widgets/toolbar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> animation;
  CurvedAnimation curve;

  int _currentIndex = 0;
  final _icons = [
    EvaIcons.home,
    EvaIcons.person,
    EvaIcons.messageCircle,
    EvaIcons.briefcase,
  ];
  final _fragments = [
    HomeFragment(),
    ConnectionsFragment(),
    ChatsFragment(),
    JobsFragment(),
  ];
  final _titles = [
    "Home",
    "Connections",
    "Chats",
    "Jobs",
  ];
  final _hintSearch = [
    "Search",
    "Search connections",
    "Search chats",
    "Search jobs & opportunities",
  ];

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        drawer: MainDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (ctx, _) => [
            Toolbar(title: _titles[_currentIndex]),
            SliverToBoxAdapter(
              child: SearchBar(hintText: _hintSearch[_currentIndex],),
            ),
          ],
          body: IndexedStack(
            index: _currentIndex,
            children: _fragments,
          ),
        ),
        floatingActionButton: FloatingPostButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: _icons,
          activeIndex: _currentIndex,
          elevation: 0,
          iconSize: 28,
          backgroundColor: Colors.white,
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: ColorPalette.grey,
          gapLocation: GapLocation.center,
          leftCornerRadius: 8,
          rightCornerRadius: 8,
          notchSmoothness: NotchSmoothness.defaultEdge,
          notchAndCornersAnimation: animation,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
