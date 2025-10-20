import 'package:flutter/material.dart';
import '../Pages/card_page.dart';
import '../Pages/expense_page.dart';
import '../Pages/income_page.dart';
import '../Pages/wallet_page.dart';

Widget quickAction(BuildContext context) {
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
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IncomePage()),
                );
              },
              borderRadius: BorderRadius.circular(20),
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
          ),

          SizedBox(width: 10),

          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpensePage()),
                );
              },
              borderRadius: BorderRadius.circular(20),
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
          ),

          SizedBox(width: 10),


          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardPage()),
                );
              },
              borderRadius: BorderRadius.circular(20),
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
          ),

          SizedBox(width: 10),


          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletPage()),
                );
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Color(0xFFec4899), Color(0xFF9333ea)],
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

// Example pages for navigation






