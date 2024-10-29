// lib/view/screens/profile_screen.dart
import 'package:clean_temp/presentation/view/user_view/profile_info_view.dart';
import 'package:flutter/material.dart';

class ProfileInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Using the ProfileInfoView component
            ProfileInfoView(
              username: 'Saqib',
              email: 'saibali.fd@gmail.com',
              avatar:
                  'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
