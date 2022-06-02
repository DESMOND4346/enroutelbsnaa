import 'package:enroutelbsnaa/screens/chat/chatbase.dart';
import 'package:enroutelbsnaa/screens/home/home.dart' as home;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:enroutelbsnaa/screens/resources/resources.dart';
import 'package:flutter/material.dart';

class BotNav extends StatefulWidget {
  const BotNav({Key? key}) : super(key: key);

  @override
  BotNavState createState() => BotNavState();
}

class BotNavState extends State<BotNav> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  var user;

  void initState() {
    super.initState();
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  void updating() {
    final _auth = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance
        .collection('UserData')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .set({
      "Name": _auth?.displayName,
      "mail": _auth?.email,
      "uid": _auth?.uid,
    });
  }

  @override
  Widget build(BuildContext context) {
    updating();
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: [
          const home.Home(),
          const Resources(),
          //ChatPage(peerNickname: userChat.id, peerAvatar: peerAvatar, peerId: peerId, userAvatar: userAvatar),
          Chat(chatRoomId: '',),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF688EDB),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade600,
        onTap: onTapped,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: "Resources",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Chat",
          ),
        ],
      ),
    );
  }
}
