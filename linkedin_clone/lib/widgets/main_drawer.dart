import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/pages/profile_page.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/util/transitions.dart';
import 'package:linkedin_clone/widgets/custom_icon_button.dart';
import 'package:linkedin_clone/widgets/hashtag_item.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildHeader(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        splashColor: ColorPalette.light,
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            ScaleRoute(
              page: ProfilePage(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              SizedBox(width: 8),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Widiatmoko Rahardiyan",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.dark,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Sleep Engineer",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "3,454 connections",
                      style: GoogleFonts.sourceSansPro(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              CustomIconButton(
                icon: EvaIcons.settings2,
                iconSize: 18,
                color: ColorPalette.light,
                iconColor: ColorPalette.grey,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUpgradePremium() {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: ColorPalette.warning,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Premium",
          style: GoogleFonts.sourceSansPro(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      title: Text(
        "Upgrade to Premium",
        style: GoogleFonts.sourceSansPro(
          color: ColorPalette.dark,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {},
    );
  }

  Widget _buildTags(String title, List<String> items, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: GoogleFonts.sourceSansPro(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Column(
          children: items.map((name) => HashtagItem(title: name)).toList(),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: ColorPalette.grey,
      height: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            _buildHeader(context),
            _buildDivider(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildUpgradePremium(),
                  _buildDivider(),
                  _buildTags(
                    "Recent",
                    [
                      'linux',
                      'android',
                      'flutter',
                      'kotlin',
                      'uiux',
                    ],
                    ColorPalette.dark,
                  ),
                  _buildDivider(),
                  ListTile(
                    title: Text(
                      "Group",
                      style: GoogleFonts.sourceSansPro(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {},
                  ),
                  _buildDivider(),
                  ListTile(
                    title: Text(
                      "Events",
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.dark,
                        fontSize: 14,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        EvaIcons.plus,
                        size: 18,
                        color: ColorPalette.dark,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  _buildDivider(),
                  _buildTags(
                    "Followed Hashtags",
                    [
                      'android',
                      'flutter',
                      'datascience',
                      'machinelearning',
                      'python',
                      'linux',
                    ],
                    Theme.of(context).primaryColor,
                  ),
                  _buildDivider(),
                  ListTile(
                    title: Text(
                      "Discover more",
                      style: GoogleFonts.sourceSansPro(
                        color: ColorPalette.dark,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
