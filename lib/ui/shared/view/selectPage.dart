import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoticlone/core/colors.dart';
import 'package:spoticlone/core/images.dart';
import 'package:spoticlone/ui/shared/view/registerPage.dart';
import 'package:spoticlone/ui/shared/view/secondPage.dart';

class selectPage extends StatelessWidget {
  const selectPage({super.key});
  static final colors = AppColors();
  static final images = Appimages();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      splitScreenMode: false,
      minTextAdapt: false,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Color(colors.gray),
          body: Container(
            width: double.infinity,
            height: 1.sh,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => secondPage()));
                        },
                        icon: Icon(
                          Icons.arrow_left_outlined,
                          color: Color(colors.primaryWhite),
                          size: 35.sp,
                        )),
                    Image(image: AssetImage(images.sptb))
                  ],
                ),
                Center(child: Image(image: AssetImage(images.logo))),
                Container(
                  margin: EdgeInsets.only(top: 0.1.sh),
                  child: Column(children: [
                    Text(
                      'Enjoy Listening To Music',
                      style: TextStyle(
                          color: Color(colors.primaryWhite),
                          fontSize: 0.05.sw,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 0.03.sh),
                        width: 0.95.sw,
                        child: Center(
                          child: Text(
                            'Spotify is a proprietary Swedish audio streaming and media services provider',
                            style: TextStyle(
                                color: Color(colors.gray2),
                                fontSize: 0.05.sw,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 0.03.sh),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Button(colors: colors),
                            Button2(colors: colors)
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage(images.spbellish),
                          width: 0.52.sw,
                        ),
                        Image(
                          image: AssetImage(images.spbb),
                          width: 0.31.sw,
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ),
        );
      },
    );
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
      width: 0.4.sw,
      height: 0.1.sh,
      decoration: BoxDecoration(
        color: Color(colors.primarygreen),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Center(
        child: InkWell(
          onTap: (() {
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (ctx) => const registerPage()));
          }),
          child: Text('Register',
              style: TextStyle(
                  color: Color(colors.primaryWhite),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
    required this.colors,
  }) : super(key: key);

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.4.sw,
      height: 0.1.sh,
      decoration: BoxDecoration(
        color: Color(colors.gray),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Center(
        child: InkWell(
          onTap: (() {
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (ctx) => const registerPage()));
          }),
          child: Text('Sign In',
              style: TextStyle(
                  color: Color(colors.primaryWhite),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
