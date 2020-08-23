import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashtagable/hashtag_text.dart';
import 'package:linkedin_clone/util/color_palette.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  ExpandableText({@required this.text});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with SingleTickerProviderStateMixin {
  String firstHalf;
  String secondHalf;

  bool expanded = false;

  @override
  void initState() {
    super.initState();
//    Split
    if (widget.text.length > 300) {
      firstHalf = widget.text.substring(0, 300);
      secondHalf = widget.text.substring(300, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: Duration(milliseconds: 400),
      vsync: this,
      curve: Curves.easeInOut,
      child: Container(
        child: secondHalf.isEmpty
            ? HashTagText(
                text: firstHalf,
                basicStyle: GoogleFonts.sourceSansPro(
                  color: ColorPalette.dark,
                  fontSize: 13,
                ),
                decoratedStyle: GoogleFonts.sourceSansPro(
                  color: Theme.of(context).primaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  HashTagText(
                    text: expanded
                        ? (firstHalf + secondHalf)
                        : (firstHalf + '...'),
                    basicStyle: GoogleFonts.sourceSansPro(
                      color: ColorPalette.dark,
                      fontSize: 13,
                    ),
                    decoratedStyle: GoogleFonts.sourceSansPro(
                      color: Theme.of(context).primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(16),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        expanded ? "Show less" : "Show more",
                        style: GoogleFonts.sourceSansPro(
                          color: ColorPalette.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        expanded = !expanded;
                      });
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
