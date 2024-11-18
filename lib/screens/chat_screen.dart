import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final TextEditingController messageController = TextEditingController();

  // Remove the constructor argument as we're retrieving the argument through ModalRoute.
  ChatScreen({Key? key}) : super(key: key);

  void sendMessage(String boardName, String message) async {
    await FirebaseFirestore.instance
        .collection('messages')
        .doc(boardName)
        .collection('messages')
        .add({
      'username': 'Current User', // Replace with the current user's name
      'datetime': DateTime.now(),
      'text': message,
    });
    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve the boardName argument passed via Navigator.pushNamed
    final String boardName = ModalRoute.of(context)?.settings.arguments as String? ?? 'Default Board';

    return Scaffold(
      appBar: AppBar(title: Text(boardName)),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('messages')
                  .doc(boardName)
                  .collection('messages')
                  .orderBy('datetime')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return Center(child: Text('No messages yet.'));
                }

                final messages = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return ListTile(
                      title: Text(message['text']),
                      subtitle: Text('${message['username']} - ${message['datetime'].toDate()}'),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      labelText: 'Enter your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => sendMessage(boardName, messageController.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}