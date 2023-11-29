import 'package:flutter/material.dart';
import 'package:zero/screen/user_signup.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();

    // simulate some loading process
    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const UserSignUp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/logo.png', width: 200,),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
           const CircularProgressIndicator(color: Colors.white,),
        ]),
      ),
    );
  }
}
