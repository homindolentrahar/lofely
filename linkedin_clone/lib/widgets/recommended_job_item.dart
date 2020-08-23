import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/model/job_model.dart';
import 'package:linkedin_clone/util/color_palette.dart';

class RecommendedJobItem extends StatelessWidget {
  final Job job;

  RecommendedJobItem({@required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ColorPalette.grey,
          width: 0.3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(job.avatar),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          Text(
            job.position,
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            job.company,
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.grey,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            job.location,
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.grey,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
