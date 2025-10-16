import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget balanceCard() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: AlignmentGeometry.centerLeft,
        end: AlignmentGeometry.centerRight,
        colors: [Color(0xFF9333ea), Color(0xFF3b82f6)],
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Balance", style: TextStyle(color: Colors.white)),
            Container(child: Icon(Icons.credit_card, color: Colors.white)),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "\$12,456.50",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.trending_up_outlined,
                          color: Colors.green,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Income",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Text(
                      "\$12,456.50",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.trending_down_outlined,
                          color: Colors.deepOrange,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Expenses",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Text(
                      "\$12,456.50",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}