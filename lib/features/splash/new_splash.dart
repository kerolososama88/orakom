import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/app_colors.dart';
import '../../core/widgets/logo_auth.dart';
import '../auth/presentation/login/presentation/views/login_view.dart';

class NewSplash extends StatefulWidget {
  const NewSplash({super.key});

  @override
  State<NewSplash> createState() => _NewSplashState();
}

class _NewSplashState extends State<NewSplash> {
  @override
  void initState() {
    startDelay();
    super.initState();
  }

  Timer? _timer;

  startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  _goNext() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginView(),
        ));
    // String? token = await CacheHelper.getData(key: 'token');
    // // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool? isLoggedIn =await CacheHelper.getData(key: 'isLoggedIn');
    // if(isLoggedIn!){
    //   if(token!=null){
    //     // ignore: use_build_context_synchronously
    //     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const LoginView()));
    //   }
    // }else{
    //   // ignore: use_build_context_synchronously
    //   Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const LoginView()));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColors.splashColor,
      child:  LogoAuth(bottom: 53.h,),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
