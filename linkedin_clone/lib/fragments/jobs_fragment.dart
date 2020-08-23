import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hashtagable/hashtag_text.dart';
import 'package:linkedin_clone/data/local_data.dart';
import 'package:linkedin_clone/util/color_palette.dart';
import 'package:linkedin_clone/widgets/job_item.dart';
import 'package:linkedin_clone/widgets/recommended_job_item.dart';

class JobsFragment extends StatefulWidget {
  @override
  _JobsFragmentState createState() => _JobsFragmentState();
}

class _JobsFragmentState extends State<JobsFragment>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  final List<String> _tabsTitle = [
    "Explore",
    "Saved",
    "Applied",
  ];

  @override
  void initState() {
    _controller = TabController(length: _tabsTitle.length, vsync: this);

    super.initState();
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          )),
      child: TabBar(
        controller: _controller,
        indicatorColor: Theme.of(context).primaryColor,
        labelColor: ColorPalette.dark,
        unselectedLabelColor: ColorPalette.grey,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: _tabsTitle
            .map(
              (title) => _buildTabItem(
                title.toUpperCase(),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildTabItem(String title) {
    return Tab(
      child: Text(
        title,
        style: GoogleFonts.sourceSansPro(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildRecommended() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Recommended Jobs",
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          HashTagText(
            text: "Because you follow #android, #flutter, #uiux, and others",
            basicStyle: GoogleFonts.sourceSansPro(
              color: ColorPalette.grey,
              fontSize: 12,
            ),
            decoratedStyle: GoogleFonts.sourceSansPro(
              color: Theme.of(context).primaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 140,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: recommendedJobs.length,
              itemBuilder: (ctx, index) => RecommendedJobItem(
                job: recommendedJobs[index],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJobs() {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Available Jobs",
              style: GoogleFonts.sourceSansPro(
                color: ColorPalette.dark,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Based on your skills",
              style: GoogleFonts.sourceSansPro(
                color: ColorPalette.grey,
                fontSize: 12,
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: _buildSkills(["Android", "Python", "Java", "Linux"]),
                ),
                Chip(
                  backgroundColor: Theme.of(context).primaryColor,
                  label: Icon(
                    EvaIcons.moreHorizotnal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: jobs.length,
                itemBuilder: (ctx, index) => JobItem(
                  job: jobs[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkills(List<String> skills) {
    return Container(
      height: 40,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: skills.length,
        itemBuilder: (ctx, index) => Container(
          margin: const EdgeInsets.only(right: 8),
          child: Chip(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            elevation: 0,
            label: Text(
              skills[index],
              style: GoogleFonts.sourceSansPro(
                color: Theme.of(context).primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTabBar(),
        SizedBox(
          height: 8,
        ),
        _buildRecommended(),
        SizedBox(
          height: 8,
        ),
        _buildJobs(),
      ],
    );
  }
}
