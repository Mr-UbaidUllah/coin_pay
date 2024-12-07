import 'package:coin_pay/pages/on_boarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoinPay());
}

class CoinPay extends StatelessWidget {
  const CoinPay({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}