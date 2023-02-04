import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:spoticlone/core/colors.dart';
import 'package:spoticlone/core/images.dart';
import 'package:spoticlone/ui/shared/view/secondPage.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  static final colors = AppColors();
  static final images = Appimages();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: false,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Color(colors.primaryBlack),
          body: Container(
            width: double.infinity,
            height: 1.sh,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images.be),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(images.logo),
                  Container(
                    width: 0.8.sw,
                    height: 0.4.sh,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        text1(colors: colors),
                        text2(colors: colors),
                        Button(colors: colors),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class text1 extends StatelessWidget {
  const text1({
    Key? key,
    required this.colors,
  }) : super(key: key);

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Text('Enjoy Listening To Music',
        style: TextStyle(
            color: Color(colors.primaryWhite),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600));
  }
}

class text2 extends StatelessWidget {
  const text2({
    Key? key,
    required this.colors,
  }) : super(key: key);

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(colors.textcolor),
            fontSize: 17.sp,
            fontWeight: FontWeight.w400));
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.colors,
  }) : super(key: key);

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.8.sw,
      height: 0.1.sh,
      decoration: BoxDecoration(
        color: Color(colors.primarygreen),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: InkWell(
          onTap: (() {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (ctx) => const secondPage()));
          }),
          child: Text('Get Started',
              style: TextStyle(
                  color: Color(colors.primaryWhite),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
