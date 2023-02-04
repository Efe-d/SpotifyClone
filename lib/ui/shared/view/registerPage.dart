import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      splitScreenMode: false,
      minTextAdapt: false,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text('Register Page'),
          ),
        );
      },
    );
  }
}
