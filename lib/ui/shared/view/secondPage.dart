import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoticlone/core/colors.dart';
import 'package:spoticlone/core/images.dart';
import 'package:spoticlone/ui/shared/view/registerPage.dart';
import 'package:spoticlone/ui/shared/view/selectPage.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  static final colors = AppColors();
  static final images = Appimages();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: false,
      minTextAdapt: false,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Color(colors.primaryWhite),
          body: Container(
              width: double.infinity,
              height: 1.sh,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images.be2),
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
                            text(colors: colors),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.shield_moon,
                                      color: Color(colors.primaryWhite),
                                      size: 45.sp,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.wb_sunny,
                                      color: Color(colors.primaryWhite),
                                      size: 45.sp,
                                    )),
                              ],
                            ),
                            Button(colors: colors),
                          ],
                        ))
                  ]))),
        );
      },
    );
  }
}

class text extends StatelessWidget {
  const text({
    Key? key,
    required this.colors,
  }) : super(key: key);

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Text("Choose Mode",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.sp,
          color: Color(colors.primaryWhite),
        ));
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
                .push(CupertinoPageRoute(builder: (ctx) => const selectPage()));
          }),
          child: Text('Continue',
              style: TextStyle(
                  color: Color(colors.primaryWhite),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
