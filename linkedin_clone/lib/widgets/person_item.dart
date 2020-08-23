import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/model/person_model.dart';
import 'package:linkedin_clone/util/color_palette.dart';

class PersonItem extends StatelessWidget {
  final Person person;

  PersonItem({@required this.person});

  Widget _buildConnectButton(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      elevation: 0,
      highlightElevation: 0,
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "Connect",
        style: GoogleFonts.sourceSansPro(
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(person.avatar),
          ),
          Text(
            person.name,
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "${person.occupation} at ${person.company}",
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.grey,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          person.mutual != 0
              ? Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          EvaIcons.link2,
                          color: Theme.of(context).primaryColor,
                          size: 12,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${person.mutual} mutuals",
                          style: GoogleFonts.sourceSansPro(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : SizedBox.shrink(),
          _buildConnectButton(context),
        ],
      ),
    );
  }
}
