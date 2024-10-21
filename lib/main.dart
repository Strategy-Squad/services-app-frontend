import 'package:flutter/material.dart';
import 'package:service_app_frontend/screen/search.dart';
import 'package:service_app_frontend/screen/serviceDashBoard.dart';
import 'package:service_app_frontend/navigationBar/navigation.dart'; // Your bottom nav bar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0; // Track selected index for navigation

  // List of pages to navigate
  final List<Widget> _pages = [
    Servicedashboard(), // Page 1
    test(), // Page 2
    Center(child: Text('Profile Page')), // Example page 3
    Center(child: Text('Profile Page')), // Example page 3
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Show the current page
      bottomNavigationBar: DotCurvedBottomNav(
        selectedIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          Icon(Icons.home, color: Colors.white, size: 30), // First icon
          Icon(Icons.search, color: Colors.white, size: 30), // Second icon
          Icon(Icons.bookmark,
                        color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30), // Third icon
        ],
        backgroundColor: Colors.blue,
        indicatorColor: Colors.white,
        hideOnScroll: false,
      ),
    );
  }
}
