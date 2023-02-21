import 'package:flutter/material.dart';
import 'package:login_and_sighnup_ui/signup.dart';

import 'login.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [

          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Hello There!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Automatic identify verification which enable you to varify your identity",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 160),
            child: Image(
              image: AssetImage("assets/images/images1.png"),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
            },
            style: ButtonStyle(
              fixedSize: const MaterialStatePropertyAll(Size(350, 60)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            child: const Text("Login"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              fixedSize: const MaterialStatePropertyAll(Size(350, 60)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            child: const Text("Sign Up"),
          ),
        ],
      ),
    ));
  }
}
