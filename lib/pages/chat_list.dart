import 'package:flutter/material.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final List<Map<String, String>> chats = [
    {'name': 'Mohammad Afzal Malik', 'message': 'Hey, working on any project?'},
    {'name': 'Alok', 'message': 'We should collaborate soon.'},
    {'name': 'Prajjval Sharma', 'message': 'Available for HackX!'},
    {'name': 'Rohit Sharma', 'message': 'Shared my idea doc.'},
    {'name': 'Karan Dixit', 'message': 'Interested in Flutter projects.'},
  ];

  void _editMessage(int index) {
    final TextEditingController _controller = TextEditingController(
      text: chats[index]['message'],
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Message - ${chats[index]['name']}'),
        content: TextField(
          controller: _controller,
          decoration: const InputDecoration(labelText: 'Message'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                chats[index]['message'] = _controller.text;
              });
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        backgroundColor: const Color(0xFF687FE5),
      ),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF687FE5),
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(chat['name']!),
            subtitle: Text(chat['message']!),
            trailing: IconButton(
              icon: const Icon(Icons.edit, size: 18, color: Colors.grey),
              onPressed: () => _editMessage(index),
            ),
          );
        },
      ),
    );
  }
}
