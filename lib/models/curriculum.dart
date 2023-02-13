import 'package:todo/constants.dart';
import 'package:todo/models/course_time.dart';

class Curriculum {
  CourseTime courseTime;
  String className;
  String? teacher;
  String? location;
  Week week;
  Curriculum(
      {required this.className,
      required this.courseTime,
      this.location,
      this.teacher,
      required this.week});

  String getClassName() => className;
  String? getTeacherName() => teacher;
  String? getLocation() => location;
  Week getWeek() => week;
}
