import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
