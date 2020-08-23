import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashtagable/hashtag_text.dart';
import 'package:intl/intl.dart';
import 'package:linkedin_clone/model/post_model.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/expandable_text.dart';

class PostItem extends StatelessWidget {
  final Post post;

  PostItem({this.post});

  Widget _buildUserSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  post.avatar,
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    post.username,
                    style: GoogleFonts.sourceSansPro(
                      color: ColorPalette.dark,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${NumberFormat.compact().format(post.followers)} followers",
                    style: GoogleFonts.sourceSansPro(
                      color: ColorPalette.grey,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "${post.postTime} ∙ Edited ∙ ",
                        style: GoogleFonts.sourceSansPro(
                          color: ColorPalette.grey,
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        EvaIcons.globe2,
                        color: ColorPalette.grey,
                        size: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                EvaIcons.moreHorizotnal,
                color: ColorPalette.grey,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ExpandableText(text: post.caption),
        ),
        Image(
          image: AssetImage(
            post.image,
          ),
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildInteractionSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: <Widget>[
          _buildPostStats(context),
          SizedBox(height: 10),
          Divider(
            color: ColorPalette.grey,
            thickness: 0.3,
            height: 0,
            endIndent: 120,
          ),
          SizedBox(height: 10),
          _buildInteractionButton(context),
        ],
      ),
    );
  }

  Widget _buildPostStats(BuildContext context) {
    return Row(
      children: <Widget>[
        post.likesCount != 0
            ? Row(
                children: <Widget>[
                  _buildPostStatsText(
                      "${NumberFormat.compact().format(post.likesCount)} likes"),
                  SizedBox(
                    width: 2,
                  ),
                ],
              )
            : SizedBox.shrink(),
        post.commentsCount != 0
            ? Row(
                children: <Widget>[
                  _buildDotSeparator(),
                  SizedBox(
                    width: 2,
                  ),
                  _buildPostStatsText(
                      "${NumberFormat.compact().format(post.commentsCount)} comments"),
                  SizedBox(
                    width: 2,
                  ),
                ],
              )
            : SizedBox.shrink(),
        post.sharesCount != 0
            ? Row(
                children: <Widget>[
                  _buildDotSeparator(),
                  SizedBox(
                    width: 2,
                  ),
                  _buildPostStatsText(
                      "${NumberFormat.compact().format(post.sharesCount)} shares"),
                ],
              )
            : SizedBox.shrink(),
      ],
    );
  }

  Widget _buildInteractionButton(BuildContext context) {
    final icons = [
      Icons.thumb_up,
      EvaIcons.messageSquare,
      EvaIcons.share,
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: icons
          .map(
            (icon) => InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(icon, color: ColorPalette.grey, size: 24),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildPostStatsText(String text) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
        color: ColorPalette.grey,
        fontSize: 12,
      ),
    );
  }

  Widget _buildDotSeparator() {
    return Text(
      "∙",
      style: GoogleFonts.sourceSansPro(
        color: ColorPalette.grey,
        fontSize: 12,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: Material(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.only(top: 8, bottom: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildUserSection(),
              SizedBox(
                height: 16,
              ),
              _buildContentSection(context),
              SizedBox(
                height: 8,
              ),
              _buildInteractionSection(context),
            ],
          ),
        ),
      ),
    );
  }
}
