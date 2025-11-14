import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final List<Map<String, String>> dummyResults = [
    {
      'title': 'Tutoring - Computer Science',
      'subtitle': 'Offered by John M. • Free • On Campus',
    },
    {
      'title': 'Study Group - Networks',
      'subtitle': 'Meets in the Library • 3 openings',
    },
    {
      'title': 'Campus Event - Hackathon',
      'subtitle': '24 Feb • Engineering Building',
    },
  ];

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,title: Text('Search'), elevation: 0, centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search students, clubs, events...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 16),

            // Filters
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterChip(label: Text('Students'), onSelected: (value) {}),
                  SizedBox(width: 8),
                  FilterChip(label: Text('Clubs'), onSelected: (value) {}),
                  SizedBox(width: 8),
                  FilterChip(label: Text('Events'), onSelected: (value) {}),
                  SizedBox(width: 8),
                  FilterChip(label: Text('Courses'), onSelected: (value) {}),
                ],
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Results",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 12),

            // Search Results List
            Expanded(
              child: ListView.builder(
                itemCount: dummyResults.length,
                itemBuilder: (context, index) {
                  final item = dummyResults[index];

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text(item['title']!),
                      subtitle: Text(item['subtitle']!),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        // Open details later
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
