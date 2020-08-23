import 'package:meta/meta.dart';

class Person {
  final String personId;
  final String name;
  final String avatar;
  final String occupation;
  final String company;
  final int mutual;

  Person({
    @required this.personId,
    @required this.name,
    @required this.avatar,
    @required this.occupation,
    @required this.company,
    @required this.mutual,
  });
}
