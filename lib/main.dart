import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: "Dashboard",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0f172a), Color(0xFF581c87), Color(0xFF0c172a)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBar(),
                const SizedBox(height: 30),
                balanceCard(),
                const SizedBox(height: 24),
                quickAction(),
                SizedBox(height: 20),
                trancsaction(),
                const SizedBox(height: 24,)
              ],
            ),
          ),
        ),
      ),
    );
  }

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
                          Text("Income", style: TextStyle(color: Colors.white,fontSize: 16)),
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
                          Text("Expenses", style: TextStyle(color: Colors.white,fontSize: 16)),
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
                child: Icon(Icons.trending_up_outlined, color: Colors.white,size: 30,),
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
                child: Icon(Icons.trending_down_outlined, color: Colors.white,size: 30,),
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
                child: Icon(Icons.credit_card_outlined, color: Colors.white,size: 30,),
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
                child: Icon(Icons.account_balance_wallet_outlined, color: Colors.white,size: 30,),
              ),
            ),

          ],
        ),
      ],
    );
  }

  Widget trancsaction(){
      return Column(
        children: [
          
        ],
      );
  }

}
