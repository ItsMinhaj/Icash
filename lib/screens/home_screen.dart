import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';
import 'package:icash/screens/login_screen.dart';
import 'package:icash/widgets/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 180,
          height: 45.0,
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text(
              "Balance",
            ),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            margin: EdgeInsets.only(left: 8.0),
            height: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: AvatarView(
                radius: 40.0,
                borderColor: Colors.green,
                avatarType: AvatarType.CIRCLE,
                imagePath: "images/Profile.png",
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: AvatarView(
              radius: 20.0,
              backgroundColor: Colors.white,
              borderColor: Colors.green,
              avatarType: AvatarType.CIRCLE,
              imagePath: "images/Notification.png",
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: Home(),
    );
  }
}
