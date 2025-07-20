import 'package:flutter/material.dart';
import '../models/user_model.dart';

class ProfileEditPage extends StatefulWidget {
  final User user; // ✅ Add this line

  const ProfileEditPage({super.key, required this.user}); // ✅ Accept user

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _courseController;
  late TextEditingController _skillsController;
  late TextEditingController _certificationsController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.user.name);
    _courseController = TextEditingController(text: widget.user.course);
    _skillsController = TextEditingController(text: widget.user.skills);
    _certificationsController = TextEditingController(text: widget.user.certifications);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _courseController.dispose();
    _skillsController.dispose();
    _certificationsController.dispose();
    super.dispose();
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      final updatedUser = User(
        name: _nameController.text,
        course: _courseController.text,
        skills: _skillsController.text,
        certifications: _certificationsController.text,
      );

      Navigator.pop(context, updatedUser);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        backgroundColor: const Color(0xFF687FE5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name', filled: true, fillColor: Colors.white),
                validator: (value) => value!.isEmpty ? 'Enter your name' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _courseController,
                decoration: const InputDecoration(labelText: 'Course', filled: true, fillColor: Colors.white),
                validator: (value) => value!.isEmpty ? 'Enter your course' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _skillsController,
                decoration: const InputDecoration(labelText: 'Skills', filled: true, fillColor: Colors.white),
                validator: (value) => value!.isEmpty ? 'Enter your skills' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _certificationsController,
                decoration: const InputDecoration(labelText: 'Certifications', filled: true, fillColor: Colors.white),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _saveProfile,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF687FE5),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text('Save', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
