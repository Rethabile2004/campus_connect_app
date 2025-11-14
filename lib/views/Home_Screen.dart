import 'package:flutter/material.dart';
import 'package:githubproject13/viewmodels/event_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var eventProvider = Provider.of<EventViewModel>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Header
                Text(
                  "CampusConnect",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Explore opportunities on your campus",
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                ),

                const SizedBox(height: 25),

                // Search Bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search jobs, events, or items...",
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Quick Actions
                Text(
                  "Quick Access",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _quickButton(Icons.work_outline, "Jobs"),
                    _quickButton(Icons.event, "Events"),
                    _quickButton(Icons.storefront, "Market"),
                    _quickButton(Icons.message_outlined, "Chats"),
                  ],
                ),

                const SizedBox(height: 35),

                // Recommended Jobs Section
                Text(
                  "Recommended Jobs",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 15),

                ListView.builder(
                  itemCount: eventProvider.events.length,
                  itemBuilder: (context, index) {
                    return _jobCard(
                      title: "IT Lab Assistant",
                      campus: "CUT Park Campus",
                      time: "Part-time",
                    );
                  },
                ),

                // _jobCard(
                //   title: "Tutor: Programming 1",
                //   campus: "CUT Main Campus",
                //   time: "Hourly",
                // ),
                const SizedBox(height: 30),

                // Events Section
                Text(
                  "Upcoming Events",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 15),

                // ListView.////////////////////////////////////////////////////////////////////////////
                _eventCard(
                  title: "Career Fair 2025",
                  date: "25 Nov • 10:00 AM",
                ),

                _eventCard(
                  title: "Hackathon Weekend",
                  date: "3 Dec • 09:00 AM",
                ),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Quick action button widget
  Widget _quickButton(IconData icon, String text) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: Colors.indigo.shade600, size: 26),
        ),
        const SizedBox(height: 8),
        Text(text, style: TextStyle(fontSize: 14, color: Colors.grey.shade800)),
      ],
    );
  }

  // Job card widget
  Widget _jobCard({
    required String title,
    required String campus,
    required String time,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              color: Colors.indigo.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.work_outline,
              size: 28,
              color: Colors.indigo.shade700,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "$campus • $time",
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Event card widget
  Widget _eventCard({required String title, required String date}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              color: Colors.indigo.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.event, size: 28, color: Colors.indigo.shade700),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
