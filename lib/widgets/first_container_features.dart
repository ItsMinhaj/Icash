import 'package:flutter/material.dart';
import 'package:icash/widgets/custome_features_item.dart';

class FirstContainerFeatures extends StatelessWidget {
  const FirstContainerFeatures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          // First Container Features list 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomFeaturesItem(
                  imagePath: "images/send money.png",
                  text: "Send Money",
                  size: 70),
              CustomFeaturesItem(
                  imagePath: "images/cash out.png", text: "Cash Out", size: 70),
              CustomFeaturesItem(
                  imagePath: "images/Trade.png", text: "Pay Money", size: 70),
              CustomFeaturesItem(
                  imagePath: "images/Deposit.png", text: "Deposit", size: 70),
            ],
          ),
          SizedBox(height: 10),

          // First Container Features list 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomFeaturesItem(
                  imagePath: "images/add money.png",
                  text: "Add Money",
                  size: 70),
              CustomFeaturesItem(
                  imagePath: "images/Request Money.png",
                  text: "Request Money",
                  size: 70),
              CustomFeaturesItem(
                  imagePath: "images/Pay Bill.png", text: "Pay Bill", size: 70),
              CustomFeaturesItem(
                  imagePath: "images/Donate.png", text: "Donate", size: 70),
            ],
          ),
        ],
      ),
    );
  }
}
