import 'package:flutter/material.dart';
import 'package:sweat_squad/view/editProfile/edit_profile_view.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const EditProfileView()));
                },
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/icons/user-avatar.png'),
                ),
                title: const Text('Edit profile'),
              ),
            ),
            Card(
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/icons/sun.png'),
                ),
                trailing: Switch(value: false, onChanged: (newValue) {}),
                title: const Text('Dark mode'),
              ),
            ),
            const Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/icons/wishlist.png'),
                ),
                title: Text('Wishlist'),
              ),
            ),
            const Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/icons/logout.png'),
                ),
                title: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
