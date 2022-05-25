import 'package:enroutelbsnaa/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Desmond Dass'),
            accountEmail: Text('originalhybrid@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://imgix.bustle.com/rehost/2016/9/13/40313444-f784-4a57-bc09-b3a737e8d032.jpg?w=800&fit=crop&crop=faces&auto=format%2Ccompress',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://static3.srcdn.com/wordpress/wp-content/uploads/2021/05/Klaroline-Graduation.jpg?q=50&fit=crop&w=963&h=481&dpr=1.5')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_box_outlined),
            title: const Text('Friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: const Text('Share'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: const Text('About us'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            title: const Text('Log out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
