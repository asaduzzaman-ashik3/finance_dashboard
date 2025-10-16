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
                transaction(),
                const SizedBox(height: 24),
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

  Widget transaction() {
    final transactions = [
      {
        'icon': Icons.shopping_bag,
        'title': 'Shopping',
        'date': 'Oct 14',
        'amount': '-\$45.00',
        'color': const Color(0xFFa855f7),
      },
      {
        'icon': Icons.coffee,
        'title': 'Coffee Shop',
        'date': 'Oct 14',
        'amount': '-\$8.50',
        'color': const Color(0xFFf97316),
      },
      {
        'icon': Icons.bolt,
        'title': 'Electricity',
        'date': 'Oct 13',
        'amount': '-\$120.00',
        'color': const Color(0xFFeab308),
      },
      {
        'icon': Icons.attach_money,
        'title': 'Salary',
        'date': 'Oct 12',
        'amount': '+\$2,500.00',
        'color': const Color(0xFF10b981),
      },
    ];

    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Recent Transactions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(color: Color(0xFFd8b4fe), fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: transaction['color'] as Color,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          transaction['icon'] as IconData,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction['title'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              transaction['date'] as String,
                              style: const TextStyle(
                                color: Color(0xFFd8b4fe),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        transaction['amount'] as String,
                        style: TextStyle(
                          color:
                          (transaction['amount'] as String).startsWith('+')
                              ? const Color(0xFF4ade80)
                              : const Color(0xFFf87171),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
