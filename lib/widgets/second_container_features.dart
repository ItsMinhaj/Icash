import 'package:flutter/material.dart';
import 'package:icash/widgets/custome_features_item.dart';

class SecondContainerFeatures extends StatelessWidget {
  const SecondContainerFeatures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Second Container Features list 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomFeaturesItem(
                imagePath: "images/Exchange.png", text: "Exchange", size: 100),
            CustomFeaturesItem(
                imagePath: "images/Loan.png", text: "Loan", size: 100),
            CustomFeaturesItem(
                imagePath: "images/Insurance.png",
                text: "Insurance",
                size: 100),
          ],
        ),
        SizedBox(height: 30),

        // Second Container Features list 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomFeaturesItem(
                imagePath: "images/Invest.png", text: "Invest", size: 100),
            CustomFeaturesItem(
                imagePath: "images/Trade.png", text: "Trade", size: 100),
            CustomFeaturesItem(
                imagePath: "images/VCS.png", text: "Vcs", size: 100),
          ],
        ),
      ],
    );
  }
}
