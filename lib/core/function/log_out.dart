// import 'package:flutter/material.dart';
//
// import 'cache_helper.dart';
//
// void singOut(context) {
//   CacheHelper.removeData(key: 'token').then((value) {
//     if (value) {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => const LoginView(),
//         ),
//       );
//     }
//   });
// }