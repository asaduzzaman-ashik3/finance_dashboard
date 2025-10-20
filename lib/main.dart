import 'package:flutter/material.dart';

import 'src/Pages/search_page.dart';
import 'src/Pages/settings_page.dart';
import 'src/widgets/appbar_widget.dart';
import 'src/widgets/balance_card_widget.dart';
import 'src/widgets/quick_action_widget.dart';
import 'src/widgets/transaction_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  List<Widget> pages = [
    Profile(),
    Settings(),
    Search()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:

      BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile',activeIcon: Icon(Icons.person)),
        BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Settings',activeIcon: Icon(Icons.settings)),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search',activeIcon: Icon(Icons.search)),
      ],
      currentIndex: currentIndex,
        onTap: (index){
        setState(() {
          currentIndex = index;
        });
        },
      backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
      body: pages[currentIndex]
    );
  }
}


class Profile extends StatelessWidget {
  const Profile({super.key});

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
                quickAction(context),
                SizedBox(height: 20),
                transaction(context),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



