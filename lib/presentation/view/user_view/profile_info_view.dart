import 'package:flutter/material.dart';

class ProfileInfoView extends StatelessWidget {
  final String username;
  final String email;
  final String avatar;

  const ProfileInfoView({
    required this.username,
    required this.email,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar),
          ),
          Text(username),
          Text(email),
        ],
      ),
    );
  }
}
