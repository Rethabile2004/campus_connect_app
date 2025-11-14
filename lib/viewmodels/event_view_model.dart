import 'package:flutter/widgets.dart';
import 'package:githubproject13/models/event.dart';

class EventViewModel with ChangeNotifier {
  Event event = Event(
    id: 'event001',
    title: 'Campus Hackathon',
    description: '24-hour coding event for all students.',
    date: DateTime.now(),
    location: 'Engineering Building',
  );
  List<Event> events = [
    Event(
      id: 'event001',
      title: 'Campus Hackathon',
      description: '24-hour coding event for all students.',
      date: DateTime.now(),
      location: 'Engineering Building',
    ),
    Event(
      id: 'event001',
      title: 'Campus Hackathon',
      description: '24-hour coding event for all students.',
      date: DateTime.now(),
      location: 'Engineering Building',
    ),
  ];
  String get id => event.id;
  String get title => event.title;
  String get description => event.description;
  DateTime get date => event.date;
  String get location => event.location;

  void setTitle(String value) {
    event.title = value;
    notifyListeners();
  }

  void setDescription(String value) {
    event.description = value;
    notifyListeners();
  }

  void setDate(DateTime value) {
    event.date = value;
    notifyListeners();
  }

  void setLocation(String value) {
    event.location = value;
    notifyListeners();
  }
}
