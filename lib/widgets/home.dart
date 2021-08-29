import 'package:flutter/material.dart';
import 'package:icash/widgets/first_container_features.dart';
import 'package:icash/widgets/second_container_features.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * .290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: FirstContainerFeatures(),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * .370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: SecondContainerFeatures(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(color: Colors.green, width: 2)
              ),
              child: Center(
                child: Text(
                  "Offer & News",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
