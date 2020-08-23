import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/custom_icon_button.dart';

class SearchBar extends StatelessWidget {
  final String hintText;

  SearchBar({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              style: GoogleFonts.ptSans(
                color: ColorPalette.grey,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorPalette.light,
                prefixIcon: Icon(
                  EvaIcons.search,
                  size: 18,
                  color: ColorPalette.grey,
                ),
                contentPadding: const EdgeInsets.all(0),
                hintText: hintText,
                hintStyle: GoogleFonts.ptSans(
                  color: ColorPalette.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(
                    color: ColorPalette.light,
                    width: 0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(
                    color: ColorPalette.light,
                    width: 0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8,),
          CustomIconButton(
            icon: EvaIcons.funnelOutline,
            iconSize: 18,
            color: Theme.of(context).primaryColor,
            iconColor: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
