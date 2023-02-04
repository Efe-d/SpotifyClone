import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoticlone/core/images.dart';
import 'package:spoticlone/core/colors.dart';
import 'package:spoticlone/ui/shared/view/firstPage.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({super.key});

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  @override
  static final colors = AppColors();
  static final images = Appimages();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: ((context) => const firstPage())));
    });
  }

  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: false,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Color(colors.primaryBlack),
          body: Center(
            child: Image.asset(images.logo),
          ),
        );
      },
    );
  }
}
