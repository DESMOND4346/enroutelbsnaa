import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

// returns name of the current user
getName() {
  var pname = _auth.currentUser?.displayName.toString();
  return Text(pname!);
}

//returns mail of the current user

getMail() {
  var mail = _auth.currentUser?.email.toString();
  return Text(mail!);
}