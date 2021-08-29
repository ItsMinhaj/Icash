import 'package:flutter/material.dart';
import 'package:icash/screens/forget_pin.dart';
import 'package:icash/screens/home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Account Number or Email",
                labelText: "A/C Number or Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Enter icash Pin",
                labelText: "Pin",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
            obscureText: true,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ForgetPinScreen()));
                  },
                  child: Text(
                    "Forget Pin?",
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
              width: 120,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    ("Sign In"),
                  ))),
        ],
      ),
    );
  }
}
