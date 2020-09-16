import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/register.dart';

class Login extends StatelessWidget {
  static String routeName = 'login_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F3FF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 45),
              height: MediaQuery.of(context).size.height * .9,
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/login_background.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .1,
                          bottom: MediaQuery.of(context).size.height * .05),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'اسم المستخدم',
                          contentPadding: EdgeInsets.all(16),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'كلمة السر',
                          contentPadding: EdgeInsets.all(16),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .075,
                      margin: EdgeInsets.all(10),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        color: Color(0xFF3F72AF),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              icon: Image.asset('assets/icons/twitter.png'),
                              onPressed: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 54),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: IconButton(
                                icon: Image.asset('assets/icons/facebook.png'),
                                onPressed: () {}),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Image.asset('assets/icons/google.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .025,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Register.routeName);
                      },
                      child: Text(
                        'إنشاء حساب جديد ؟',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
