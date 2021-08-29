import 'package:flutter/material.dart';
import 'package:icash/widgets/forget_pin.dart';

class ForgetPinScreen extends StatefulWidget {
  const ForgetPinScreen({Key? key}) : super(key: key);

  @override
  _ForgetPinScreenState createState() => _ForgetPinScreenState();
}

class _ForgetPinScreenState extends State<ForgetPinScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
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
                    height: 30,
                  ),
                  ForgetPinForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
