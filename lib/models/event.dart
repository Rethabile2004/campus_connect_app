// models/event.dart
class Event {
  final String id;
   String title;
   String description;
   DateTime date;
   String location;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
  });

}