// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balamce;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    Key? key,
    required this.balamce,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Balance',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\$' + balamce.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Card number
                Text(
                  cardNumber.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                // Card expiry date
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
