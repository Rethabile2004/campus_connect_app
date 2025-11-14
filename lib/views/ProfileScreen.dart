import 'package:flutter/material.dart';
import 'package:githubproject13/viewmodels/user_view_model.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header Section
              Consumer<UserViewModel>(
                builder: (context,user,child) {
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    color: Colors.indigo,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage(user.avatarUrl),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          user.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          user.bio,
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          user.id,
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  );
                }
              ),

              const SizedBox(height: 20),

              // Stats Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    _StatBox(label: "Posts", value: "12"),
                    _StatBox(label: "Clubs", value: "4"),
                    _StatBox(label: "Events", value: "9"),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Options List
              _buildSectionTitle("Account"),
              _buildTile(Icons.person, "Edit Profile"),
              _buildTile(Icons.note, "My Posts"),
              _buildTile(Icons.bookmark, "Saved Items"),
              _buildTile(Icons.message, "Messages"),

              const SizedBox(height: 20),

              _buildSectionTitle("Settings"),
              _buildTile(Icons.settings, "Preferences"),
              _buildTile(Icons.help_outline, "Help & Support"),
              _buildTile(Icons.logout, "Logout", isDestructive: true),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget _buildTile(IconData icon, String label, {bool isDestructive = false}) {
    return ListTile(
      leading: Icon(
        icon,
        color: isDestructive ? Colors.red : Colors.indigo,
      ),
      title: Text(
        label,
        style: TextStyle(
          color: isDestructive ? Colors.red : Colors.black87,
          fontSize: 15,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}

class _StatBox extends StatelessWidget {
  final String label;
  final String value;

  const _StatBox({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
