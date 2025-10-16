import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget appBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Wallet",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Welcome back, User!",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(Icons.account_balance, size: 24, color: Colors.white),
      ),
    ],
  );
}