import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:linkedin_clone/data/local_data.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/person_item.dart';

class ConnectionsFragment extends StatelessWidget {
  Widget _buildSummary(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildSummaryItem(
                  context,
                  "Connections",
                  3454,
                  EvaIcons.link2,
                  ColorPalette.warning,
                ),
                _buildVerticalDivider(),
                _buildSummaryItem(
                  context,
                  "Invitations",
                  5,
                  EvaIcons.emailOutline,
                  ColorPalette.error,
                ),
                _buildVerticalDivider(),
                _buildSummaryItem(
                  context,
                  "Hashtags",
                  35,
                  EvaIcons.hash,
                  Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: MaterialButton(
              elevation: 0,
              highlightElevation: 0,
              minWidth: double.infinity,
              color: Colors.white,
              textColor: Theme.of(context).primaryColor,
              splashColor: ColorPalette.light,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 1.5,
                ),
              ),
              child: Text(
                "Manage all",
                style: GoogleFonts.sourceSansPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryItem(BuildContext context, String name, int amount,
      IconData icon, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: ColorPalette.grey,
          size: 24,
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 4,
            ),
            Text(
              NumberFormat.compact().format(amount),
              style: GoogleFonts.ptSans(
                color: ColorPalette.dark,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: GoogleFonts.sourceSansPro(
            color: ColorPalette.grey,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildConnections() {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 3 / 4,
        ),
        itemCount: persons.length,
        itemBuilder: (ctx, index) => PersonItem(
          person: persons[index],
        ),
      ),
    );
  }

  Widget _buildVerticalDivider() {
    return VerticalDivider(
      color: ColorPalette.grey,
      thickness: 0.5,
      indent: 16,
      endIndent: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildSummary(context),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
          child: Text(
            "People you may know",
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        _buildConnections(),
      ],
    );
  }
}
