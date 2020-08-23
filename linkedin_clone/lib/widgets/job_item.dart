import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_clone/model/job_model.dart';
import 'package:linkedin_clone/util/color_palette.dart';

class JobItem extends StatelessWidget {
  final Job job;

  JobItem({@required this.job});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image(
          image: AssetImage(job.avatar),
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        job.position,
        style: GoogleFonts.sourceSansPro(
          color: ColorPalette.dark,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            job.company,
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.grey,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            job.location,
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            job.jobPosted,
            style: GoogleFonts.sourceSansPro(
              color: ColorPalette.dark,
              fontSize: 12,
            ),
          ),
        ],
      ),
      isThreeLine: true,
    );
  }
}
