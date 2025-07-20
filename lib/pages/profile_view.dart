import 'package:flutter/material.dart';
import '../models/user_model.dart';

class ProfileViewPage extends StatelessWidget {
  final User user;
  const ProfileViewPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEBF6),
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: const Color(0xFF687FE5),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF687FE5),
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              user.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF333333)),
            ),
            const SizedBox(height: 8),
            Text(
              user.course,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            _buildInfoTile(Icons.code, "Skills", user.skills),
            const SizedBox(height: 16),
            _buildInfoTile(Icons.badge, "Certifications", user.certifications),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                // You can add share logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF687FE5),
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
              ),
              icon: const Icon(Icons.share),
              label: const Text('Share Profile', style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String content) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFF687FE5)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(content, style: const TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
