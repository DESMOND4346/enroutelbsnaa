import 'package:enroutelbsnaa/components/NavBar.dart';
import 'package:flutter/material.dart';
import './downloads/base.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Resources'),
          backgroundColor: const Color(0xFF688EDB),
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavBar()),
            ),
            child: const Icon(Icons.menu),
          ),
        ),
        body: const Downloads());
  }
}
