import 'package:flutter/material.dart';
import 'package:zero/constant/app_helper.dart';
import 'package:zero/screen/homepage.dart';
import 'package:zero/screen/user_login.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
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
                    icon: Icon(Icons.person_2),
                    label: Text('Username'),
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
                            builder: (context) => const UserLogin()));
                  },
                  child: const Text(
                    'Already have an Account? Login',
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
                'Sign Up',
                style: AppHelper.btnDeco,
              )),
            ),
          )
        ],
      )),
    );
  }
}
