import 'package:meta/meta.dart';

class Job {
  final String jobId;
  final String position;
  final String company;
  final String avatar;
  final String location;
  final String jobPosted;

  Job({
    @required this.jobId,
    @required this.position,
    @required this.company,
    @required this.avatar,
    @required this.location,
    this.jobPosted,
  });
}
