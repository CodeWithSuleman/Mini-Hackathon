import 'dart:developer';

import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:minihackathon/constant/constant_color.dart';
import 'package:minihackathon/screens/battom_bar.dart';
import 'package:minihackathon/screens/signup_screen.dart';
import 'package:minihackathon/widgets/button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

TextEditingController emailAddres = TextEditingController();
TextEditingController PassController = TextEditingController();

void logIn() async {
  String email = emailAddres.text.trim();
  String password = PassController.text.trim();
  if (email == '' || password == '') {
    print("Please fill the field");
  } else {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print("User Log-In!");
      if (credential.user != null) {
        Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => const BottomBarScreen()));
      }
    } on FirebaseAuthException catch (e) {
      log(e.code.toString());
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                    child: const Image(image: AssetImage('assets/3.png')),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                  const Text(
                    "PLANTIFY",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(ConstanColor.color1),
                    fontSize: 36),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.2),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "Masukan NISN dan password untukmemulai belajar sekarang",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(ConstanColor.color1),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              TextFormField(
                controller: emailAddres,
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Email',
                  hintText: "Enter Email",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              TextFormField(
                controller: PassController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  hintText: "Enter Password",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.010),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInUpScreen()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(ConstanColor.color1),
                    ),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                child: GrButton(
                    callBack: () {
                      logIn();
                    },
                    icon: const Icon(Icons.login),
                    bcolor: Color(ConstanColor.color1),
                    bName: "LOGIN"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
