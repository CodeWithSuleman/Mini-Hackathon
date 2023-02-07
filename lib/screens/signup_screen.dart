import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:minihackathon/screens/battom_bar.dart';
import '../constant/constant_color.dart';
import '../widgets/button.dart';

class SignInUpScreen extends StatefulWidget {
  const SignInUpScreen({Key? key}) : super(key: key);

  @override
  State<SignInUpScreen> createState() => _SignInUpScreenState();
}

class _SignInUpScreenState extends State<SignInUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void signUp() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email == "" || password == "") {
      print("Please fill the fields");
    } else {
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print("User created!");
        if (credential.user != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomBarScreen()),
          );
        }
      } on FirebaseAuthException catch (e) {
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
                  Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      child: Image.asset('assets/3.png')),
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
                "SignUp",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(ConstanColor.color1),
                    fontSize: 36),
              ),
              Container(
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
                controller: emailController,
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
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  hintText: "Enter Password ",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                child: GrButton(
                    callBack: () {
                      signUp();
                    },
                    icon: const Icon(Icons.login),
                    bcolor: Color(ConstanColor.color1),
                    bName: "Sign-Up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
