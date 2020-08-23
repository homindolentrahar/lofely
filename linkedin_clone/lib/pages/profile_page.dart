import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/custom_icon_button.dart';
import 'package:linkedin_clone/widgets/search_bar.dart';
import 'package:linkedin_clone/widgets/toolbar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 0;
  final String _bio =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque habitant morbi tristique senectus. Amet aliquam id diam maecenas. Viverra nibh cras pulvinar mattis nunc sed blandit. Ornare arcu odio ut sem nulla pharetra diam sit amet. Id velit ut tortor pretium viverra suspendisse potenti nullam ac. Magna eget est lorem ipsum dolor. Nunc sed velit dignissim sodales. Vitae aliquet nec ullamcorper sit amet. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Consectetur lorem donec massa sapien. Id diam vel quam elementum.";

  final List<Map<String, dynamic>> _skills = [
    {
      'skill': "Android",
      'rate': 75,
      'icon': EvaIcons.smartphoneOutline,
    },
    {
      'skill': "Flutter",
      'rate': 46,
      'icon': EvaIcons.smartphoneOutline,
    },
    {
      'skill': "Linux",
      'rate': 50,
      'icon': EvaIcons.monitorOutline,
    },
  ];
  final List<Map<String, dynamic>> _studies = [
    {
      'title': "Mboh Elementary School",
      'subtitle': null,
      'year': "2006 - 2011",
    },
    {
      'title': "Nah Junior High School",
      'subtitle': null,
      'year': "2012 - 2014",
    },
    {
      'title': "Loh High School of Business",
      'subtitle': "Business Management",
      'year': "2015 - 2018",
    },
    {
      'title': "Kok University",
      'subtitle': "Informatics",
      'year': "2019 - Present",
    },
  ];

  final List<Map<String, dynamic>> _experiences = [
    {
      'subtitle': "frontierDesk",
      'title': "Professional TV Watcher",
      'year': "2014 - 2015",
    },
    {
      'subtitle': "Athome",
      'title': "Sleep Enthusiast",
      'year': "2015 - 2019",
    },
    {
      'subtitle': "TB.Bangun Jaya Ltd.",
      'title': "Sleep Engineer",
      'year': "2019 - Present",
    },
  ];

  final List<Map<String, dynamic>> _contacts = [
    {
      'icon': EvaIcons.linkedinOutline,
      'name': "Link Profile",
      'value': "linkedin.com/nowhere/sleep-enthusiast",
    },
    {
      'icon': EvaIcons.linkOutline,
      'name': "Website",
      'value': "https://sleepypandas.com",
    },
    {
      'icon': EvaIcons.twitterOutline,
      'name': "Twitter",
      'value': "@sleepypandas",
    },
    {
      'icon': EvaIcons.emailOutline,
      'name': "Email",
      'value': "sleepypandas@gmail.com",
    },
  ];

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      "assets/images/profile.jpg",
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Material(
                      color: ColorPalette.dark.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            EvaIcons.editOutline,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Widiatmoko Rahardiyan",
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.dark,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Sleep Engineer",
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.dark,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "TB.Bangun Jaya Ltd.",
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          EvaIcons.pinOutline,
                          color: ColorPalette.grey,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Middle of Nowhere, Nowhere",
                          style: GoogleFonts.sourceSansPro(
                            color: ColorPalette.dark,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 25,
                height: 25,
                elevation: 0,
                highlightElevation: 0,
                child: Icon(
                  EvaIcons.editOutline,
                  color: ColorPalette.grey,
                  size: 18,
                ),
                color: Colors.white,
                shape: CircleBorder(
                  side: BorderSide(
                    color: ColorPalette.grey,
                    width: 0.5,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkills() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Skills",
                style: GoogleFonts.sourceSansPro(
                  color: ColorPalette.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              _buildTextButton(
                "Edit",
                EvaIcons.editOutline,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            children: _skills
                .map(
                  (skill) => ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    leading: Icon(
                      skill['icon'],
                      color: ColorPalette.dark,
                    ),
                    title: Text(
                      skill['skill'],
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.dark,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: CircularPercentIndicator(
                      radius: 32,
                      percent: skill['rate'] / 100,
                      lineWidth: 3,
                      center: Text(
                        skill['rate'].toString(),
                        style: GoogleFonts.sourceSansPro(
                          color: Theme.of(context).primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: ColorPalette.light,
                      progressColor: Theme.of(context).primaryColor,
                    ),
                    onTap: () {},
                  ),
                )
                .toList(),
          ),
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width * 0.5,
            elevation: 0,
            highlightElevation: 0,
            shape: StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: Text(
              "All Skills",
              style: GoogleFonts.sourceSansPro(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceAndStudy() {
    final _titles = ["Educations", "Experience"];
    return Container(
      width: double.infinity,
      height: 240,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          _buildSidebar(),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      _titles[_currentIndex],
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.dark,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    _buildTextButton("Edit", EvaIcons.editOutline)
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                _buildTimelineItems(
                  _currentIndex == 0 ? _studies : _experiences,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    final _bars = [EvaIcons.bookOutline, EvaIcons.briefcaseOutline];
    return Column(
      children: List.generate(
        2,
        (index) => Expanded(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: index == _currentIndex
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              splashColor: ColorPalette.light,
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  _bars[index],
                  color:
                      index == _currentIndex ? Colors.white : ColorPalette.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimelineItems(List<Map<String, dynamic>> items) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (ctx, index) => TimelineTile(
          alignment: TimelineAlign.left,
          isFirst: index == 0 ? true : false,
          isLast: index == items.length - 1 ? true : false,
          indicatorStyle: IndicatorStyle(
            width: 10,
            height: 10,
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.only(right: 8),
          ),
          topLineStyle: LineStyle(
            color: Theme.of(context).primaryColor,
          ),
          bottomLineStyle: LineStyle(
            color: Theme.of(context).primaryColor,
          ),
          rightChild: Container(
            constraints: BoxConstraints(
              minHeight: 40,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    items[index]['title'],
                    style: GoogleFonts.sourceSansPro(
                      color: ColorPalette.dark,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  items[index]['subtitle'] == null
                      ? SizedBox.shrink()
                      : Text(
                          items[index]['subtitle'],
                          style: GoogleFonts.sourceSansPro(
                            color: ColorPalette.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  Text(
                    items[index]['year'],
                    style: GoogleFonts.sourceSansPro(
                      color: ColorPalette.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContact() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Contact",
                style: GoogleFonts.sourceSansPro(
                  color: ColorPalette.dark,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              _buildTextButton(
                "Edit",
                EvaIcons.editOutline,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            children: _contacts
                .map(
                  (contact) => _buildContactItem(contact),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Icon(
            item['icon'],
            color: ColorPalette.grey,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item['name'],
                style: GoogleFonts.sourceSansPro(
                  color: ColorPalette.dark,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                item['value'],
                style: GoogleFonts.sourceSansPro(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTextButton(String title, IconData icon) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        splashColor: ColorPalette.light,
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: 16,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                title,
                style: GoogleFonts.sourceSansPro(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            EvaIcons.chevronLeft,
            color: ColorPalette.dark,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Text(
          "My Profile",
          style: GoogleFonts.ptSans(
            color: ColorPalette.dark,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              EvaIcons.settings2Outline,
              size: 20,
              color: ColorPalette.dark,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeader(),
            SizedBox(
              height: 8,
            ),
            _buildSkills(),
            SizedBox(
              height: 8,
            ),
            _buildExperienceAndStudy(),
            SizedBox(
              height: 8,
            ),
            _buildContact(),
          ],
        ),
      ),
    );
  }
}
