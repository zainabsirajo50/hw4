import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class SettingsScreen extends StatelessWidget {
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Change Password'),
            onTap: () {
              // Add functionality to update password
            },
          ),
          ListTile(
            title: Text('Change Date of Birth'),
            onTap: () {
              // Add functionality to update DOB
            },
          ),
          ListTile(
            title: Text('Log Out'),
            onTap: () async {
              await _authService.logoutUser();
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}