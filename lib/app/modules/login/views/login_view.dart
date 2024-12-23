import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: Get.width,
            child: SvgPicture.asset(
              'assets/images/bg.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 135,
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset(
                    'assets/images/pic-1.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF22215B),
                  ),
                ),
                Text(
                  'Dirbbox',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF22215B),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    'Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7B7F9E),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEEF7FE),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/finger.svg',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Smart Id',
                            style: TextStyle(
                              color: Color(0xFF567DF4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF567DF4),
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Text(
                    'Use Social Login',
                    style: TextStyle(
                      color: Color(0xFF1B1D28),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/instagram.svg'),
                    SizedBox(
                      width: 50,
                    ),
                    SvgPicture.asset('assets/icons/twitter.svg'),
                    SizedBox(
                      width: 50,
                    ),
                    SvgPicture.asset('assets/icons/facebook.svg'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      color: Color(0xFF1B1D28),
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
