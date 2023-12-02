import 'package:flutter/material.dart';
import 'package:zero/constant/app_helper.dart';
import 'package:zero/screen/homepage.dart';
import 'package:zero/screen/user_signup.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Center(
            child: Text(
              'SOCCER',
              style: AppHelper.appHeader,
            ),
          )),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: AppHelper.boxDeco,
                child: TextFormField(
                  style: AppHelper.inputDeco,
                  cursorColor: Colors.deepOrange,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    label: Text('Email'),
                    iconColor: Colors.deepOrange,
                    labelStyle: TextStyle(
                      color: Colors.deepOrange,
                    ),
                    border: InputBorder.none,
                  ),
                )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: AppHelper.boxDeco,
                child: TextFormField(
                  obscureText: true,
                  style: AppHelper.inputDeco,
                  cursorColor: Colors.deepOrange,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    label: Text('Password'),
                    iconColor: Colors.deepOrange,
                    labelStyle: TextStyle(
                      color: Colors.deepOrange,
                    ),
                    border: InputBorder.none,
                  ),
                )),
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 20, 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserSignUp()));
                  },
                  child: const Text(
                    'Don\'t have an Account? Sign Up',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 100.0,
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: GestureDetector(
              onTap: () {
                 Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Center(
                  child: Text(
                'Login',
                style: AppHelper.btnDeco,
              )),
            ),
          )
        ],
      )),
    );
  }
}
