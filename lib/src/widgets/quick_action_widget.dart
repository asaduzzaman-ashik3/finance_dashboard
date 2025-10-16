import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget quickAction() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Quick Action",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 20),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Color(0xFF3b82f6), Color(0xFF9333ea)],
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.trending_up_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Color(0xFF10b981), Color(0xFF059669)],
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.trending_down_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Color(0xFFf97316), Color(0xFFef4444)],
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.credit_card_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Color(0xFFec4899), Color(0xFF9333ea)],
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}