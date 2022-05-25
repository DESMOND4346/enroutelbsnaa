import 'package:enroutelbsnaa/components/NavBar.dart';
import 'package:enroutelbsnaa/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:enroutelbsnaa/screens/home/widgetclass.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text("ENROUTE LBSNAA", textAlign: TextAlign.center),
        backgroundColor: const Color(0xFF688EDB),
        foregroundColor: const Color(0xFFFFFFFF),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NavBar()),
          ),
          child: const Icon(Icons.menu),
        ),
      ),
      body: const Center(
        child: DetailsContent(),
      ),
    );
  }
}
