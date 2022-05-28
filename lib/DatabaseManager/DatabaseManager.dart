// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class DatabaseManager {
//   final CollectionReference profileList =
//       FirebaseFirestore.instance.collection('profileInfo');
//
//   // Future<void> createUserData(
//       // email, String name, int score, String uid) async {
//     // return await profileList.doc(uid).set({'email': email, 'gender': gender, 'score': score});
//   }
//
//   // Future updateUserList(
//   //     String name, String gender, int score, String uid) async {
//   //   return await profileList.doc(uid).update({'name': name, 'gender': gender, 'score': score});
//   // }
//
//   Future getUsersList() async {
//     List itemsList = [];
//
//     try {
//       // await profileList.get().then((querySnapshot) {
//         for (var element in querySnapshot.docs) {
//           itemsList.add(element.data);
//         }
//       });
//       return itemsList;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }
