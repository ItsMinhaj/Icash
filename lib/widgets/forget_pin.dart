import 'package:flutter/material.dart';

class ForgetPinForm extends StatefulWidget {
  const ForgetPinForm({Key? key}) : super(key: key);

  @override
  _ForgetPinFormState createState() => _ForgetPinFormState();
}

class _ForgetPinFormState extends State<ForgetPinForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(height: 10),
          SizedBox(height: 20),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Enter Your Phone Or Email",
                labelText: "Phone or Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 20),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Enter Your Pin",
                labelText: "Pin",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Confirm Your Pin",
                labelText: "Confirm",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Attach NID",
                labelText: "NID",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          Container(
              width: 120,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Sign Up")))
        ],
      ),
    );
  }
}
