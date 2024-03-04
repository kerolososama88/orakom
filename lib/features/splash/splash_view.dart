// import 'dart:async';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:orakom/features/auth/presentation/login/presentation/views/login_view.dart';
// import 'package:orakom/features/splash/splash_body.dart';
//
// import '../../core/function/cache_helper.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   bool isLoggedIn=false;
//   late CachedNetworkImage image;
//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 3), () {
//       _navigateUser();
//     });
//   }
//   void _navigateUser() async {
//     String? token = await CacheHelper.getData(key: 'token');
//     // SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool? isLoggedIn =await CacheHelper.getData(key: 'isLoggedIn');
//     if(isLoggedIn!){
//       if(token!=null){
//         // ignore: use_build_context_synchronously
//         Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const LoginView()));
//       }
//     }else{
//       // ignore: use_build_context_synchronously
//       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginView()));
//     }
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//     AnimatedSplashScreen(
//       splashIconSize: 300,
//       splashTransition: SplashTransition.fadeTransition,
//       splash:CachedNetworkImage(
//         imageUrl: 'https://img.freepik.com/free-vector/cartoon-style-cafe-front-shop-view_134830-697.jpg',
//         width: double.infinity,
//         height: 300,
//       ) ,
//       nextScreen: const LoginView() ,
//     );
//
//   }
// }
