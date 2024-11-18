import 'package:flutter/material.dart';

class MessageBoardsScreen extends StatelessWidget {
  // Hardcoded list of message boards with their names and icons
  final List<Map<String, dynamic>> messageBoards = [
    {'name': 'General', 'icon': Icons.chat},
    {'name': 'Sports', 'icon': Icons.sports},
    {'name': 'Technology', 'icon': Icons.computer},
    {'name': 'Music', 'icon': Icons.music_note},
    {'name': 'Movies', 'icon': Icons.movie},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Message Boards')),
      drawer: NavigationDrawer(  // Assuming NavigationDrawer takes a 'children' argument.
        children: [
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: messageBoards.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(messageBoards[index]['icon']),
            title: Text(messageBoards[index]['name']),
            onTap: () {
              // Navigate to the ChatScreen, passing the board name as an argument
              Navigator.pushNamed(
                context,
                '/chat',
                arguments: messageBoards[index]['name'],
              );
            },
          );
        },
      ),
    );
  }
}