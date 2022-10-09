import 'package:flutter/material.dart';
import 'package:shopstag/util/colors.dart';
import 'package:shopstag/util/dimensions.dart';
import 'package:shopstag/widgets/big_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: Dimensions.height120,
                    right: Dimensions.height80,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(10 / 360),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height16),
                        child: Container(
                            alignment: Alignment.center,
                            height: Dimensions.height80,
                            width: Dimensions.height80,
                            child: Image.asset('assets/images/i4.jpg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: Dimensions.height180,
                    left: Dimensions.height80,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(-20 / 360),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height16),
                        child: Container(
                            alignment: Alignment.center,
                            height: Dimensions.height120,
                            width: Dimensions.height120,
                            child: Image.asset('assets/images/i3.jpg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: Dimensions.height380,
                    left: 0,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(30 / 360),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height16),
                        child: Container(
                            alignment: Alignment.center,
                            height: Dimensions.height150,
                            width: Dimensions.height150,
                            child: Image.asset('assets/images/i2.jpg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: Dimensions.height350,
                    right: 0,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(-30 / 360),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height16),
                        child: Container(
                            alignment: Alignment.center,
                            height: Dimensions.height150,
                            width: Dimensions.height150,
                            child: Image.asset('assets/images/i1.jpg'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height15,
                  right: Dimensions.width30,
                  left: Dimensions.width30,
                  bottom: Dimensions.height48),
              padding: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                top: Dimensions.width15,
                bottom: Dimensions.width15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's get \nStarted",
                    style: TextStyle(
                        color: Color(0xFF18D291),
                        fontSize: Dimensions.font26 * 1.6,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Dimensions.height24),
                  Text(
                    "Discover the things you want to buy",
                    style: TextStyle(
                        color: Colors.black54, fontSize: Dimensions.font16),
                  ),
                  SizedBox(height: Dimensions.height24),
                  Container(
                    width: double.maxFinite,
                    height: Dimensions.height48,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20)),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff00d4f1), Color(0xff8a00ff)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20)),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth: double.maxFinite,
                              minHeight: Dimensions.height48),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
