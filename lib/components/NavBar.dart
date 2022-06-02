import 'package:enroutelbsnaa/screens/login%20and%20signup/login/login.dart';
import 'package:enroutelbsnaa/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //method implementing logout and re routing to login page
    logout() async {
      await FirebaseAuth.instance.signOut();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }

    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: getName(),
            accountEmail: getMail(),
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
            decoration: const BoxDecoration(
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
          // ListTile(
          //   leading: Icon(Icons.account_box_outlined),
          //   title: const Text('Friends'),
          //   onTap: () => null,
          // ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () async {
              const url = 'https://github.com/DESMOND4346/enroutelbsnaa';
              await Share.share(url);
            },
          ),
          const Divider(),
          // ListTile(
          //   leading: const Icon(Icons.settings),
          //   title: const Text('Settings'),
          //   onTap: () => null,
          // ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('About us'),
            onTap: () async {
              const url = "https://github.com/DESMOND4346/enroutelbsnaa";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw "Could not launch $url";
              }
            },
          ),
          const Divider(),
          ListTile(
              title: const Text('Log out'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () => logout()),
        ],
      ),
    );
  }

  // returns name of the current user
  getName() {
    var pname = _auth.currentUser?.displayName.toString();
    return Text(pname!);
  }

  //returns mail of current user

  getMail() {
    var mail = _auth.currentUser?.email.toString();
    return Text(mail!);
  }
}
