// models/job.dart
class Job {
  final String id;
  String title;
  String company;
  String description;
  String location;
  DateTime postedDate;
  Job({
    required this.id,
    required this.title,
    required this.company,
    required this.description,
    required this.location,
    required this.postedDate,
  });
}
