import 'package:flutter/widgets.dart';
import 'package:githubproject13/models/job.dart';

class JobViewModel with ChangeNotifier {
  Job job = Job(
    id: 'job001',
    title: 'Part-Time Lab Assistant',
    company: 'CUT Engineering Dept',
    description: 'Assist with lab equipment and student support.',
    location: 'South Campus',
    postedDate: DateTime.now(),
  );

  String get id => job.id;
  String get title => job.title;
  String get company => job.company;
  String get description => job.description;
  String get location => job.location;
  DateTime get postedDate => job.postedDate;

  void setTitle(String value) {
    job.title = value;
    notifyListeners();
  }

  void setCompany(String value) {
    job.company = value;
    notifyListeners();
  }

  void setDescription(String value) {
    job.description = value;
    notifyListeners();
  }

  void setLocation(String value) {
    job.location = value;
    notifyListeners();
  }
}
