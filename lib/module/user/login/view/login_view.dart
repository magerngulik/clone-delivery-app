import 'package:deliveryapp/module/user/login/view/menu_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../singup/view/singup_view.dart';
import '../widget/btn_select.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool Islogin = true;
  bool Issignup = false;

  var menu = ['Login', 'Signup'];
  var titleMenu = [MenuLoginSide(), SingupView()];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                    30,
                  ),
                  bottomRight: Radius.circular(
                    30,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/login-logo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              setState(() {
                                current = 0;
                                Issignup = false;
                                Islogin = true;
                              });
                            });
                          },
                          child: BtnSelect(
                            title: 'Login',
                            active: Islogin,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              setState(() {
                                current = 1;
                                Islogin = false;
                                Issignup = true;
                              });
                            });
                          },
                          child: BtnSelect(
                            title: 'Signup',
                            active: Issignup,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: titleMenu[current],
            )
          ],
        ),
      )),
    );
  }
}
