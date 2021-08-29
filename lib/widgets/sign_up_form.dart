import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formkey = GlobalKey<FormState>();

  var selectedCountry;
  final List<String> countryList = [
    "Select Country - ",
    'Bangldesh',
    "India",
    "Australia",
    "Canada",
    "America"
  ];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Enter Your Name",
                labelText: "Name",
                fillColor: Colors.green,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                )),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 10),
          DropdownButtonFormField(
              value: selectedCountry,
              onChanged: (value) {
                setState(() {
                  selectedCountry = value;
                });
              },
              hint: Text("Select Country - "),
              items: countryList.map((itemList) {
                return DropdownMenuItem(
                  value: itemList,
                  child: Text(itemList),
                );
              }).toList()),
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
