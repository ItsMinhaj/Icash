import 'package:flutter/material.dart';
import 'package:icash/screens/sign_up_screen.dart';
import 'package:icash/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    child: Image.asset("images/icash main logo.png"),
                  ),
                  SizedBox(
                    height: 30
                  ),
                  LoginForm(),
                  SizedBox(height: 20),
                  Container(
                      width: 120,
                      height: 45,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                          },
                          child: Text("Sign Up")))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
