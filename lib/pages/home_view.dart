import 'package:flutter/material.dart';
import '../utils/dummy_data.dart';
import '../widgets/student_card.dart';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEEBF6),
      appBar: AppBar(
        title: const Text('Explore Profiles'),
        backgroundColor: const Color(0xFF687FE5),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummyUsers.length,
        itemBuilder: (context, index) {
          return StudentCard(user: dummyUsers[index]);
        },
      ),
    );
  }
}
