import 'package:flutter/material.dart';
import 'package:linkedin_clone/data/local_data.dart';
import 'package:linkedin_clone/widgets/post_item.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (ctx,index) => PostItem(post: posts[index],),
    );
  }
}
