import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/custom_icon_button.dart';

class Toolbar extends StatelessWidget {
  final String title;

  Toolbar({this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      titleSpacing: 8,
      pinned: true,
      floating: true,
      leading: IconButton(
        icon: Icon(
          EvaIcons.menu2,
          color: ColorPalette.dark,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      title: Text(
        title,
        style: GoogleFonts.ptSans(
          color: ColorPalette.dark,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.all(8),
          child: CustomIconButton(
            icon: EvaIcons.bellOutline,
            iconSize: 18,
            color: ColorPalette.light,
            iconColor: ColorPalette.grey,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
