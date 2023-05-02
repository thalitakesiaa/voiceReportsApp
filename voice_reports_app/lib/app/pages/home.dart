import 'package:flutter/material.dart';

// Pages
import 'package:voice_reports_app/app/pages/home_page.dart';
import 'package:voice_reports_app/app/pages/user.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _screen = [
    const HomePage(),
    const UserScreen(),
  ];

  void _onPageChanged(int index) {}

  void _onItemTap(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _screen,
      ),

      // Bottom bar
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue,
          primaryColor: Colors.white,
        ),
        child: BottomNavigationBar(
          // Props of navigation bar

          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => _onItemTap(index),
          currentIndex: _currentIndex,
          // backgroundColor: Colors.blue,

          // Content of Navigation bar

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30),
              label: "Usuário",
            ),
          ],
        ),
      ),
    );
  }
}
