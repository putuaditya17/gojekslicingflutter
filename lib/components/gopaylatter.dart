import 'package:flutter/material.dart';
import 'package:instax/theme.dart';

class GopayLatter extends StatelessWidget {
  const GopayLatter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/gopaylater.png',
            height: 14,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Lebih hemat pake GoPayLater 😚',
            style: bold16.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya',
            style: regular14.copyWith(color: dark2),
          )
        ],
      ),
    );
  }
}
