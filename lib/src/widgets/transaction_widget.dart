import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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