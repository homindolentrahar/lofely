import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/pages/post_page.dart';
import 'package:linkedin_clone/util/transitions.dart';

class FloatingPostButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      child: Icon(
        EvaIcons.plus,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () {
        Navigator.push(
          context,
          SlideUpRoute(
            page: PostPage(),
          ),
        );
      },
    );
  }
}
