import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getBodyContent(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add action for the floating button
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.dashboard),
              color: Colors.teal,
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            IconButton(
              icon: const Icon(Icons.show_chart),
              color: Colors.teal,
              onPressed: () {
                _onItemTapped(1);
              },
            ),
            const SizedBox(width: 40), // The middle space for the floating button
            IconButton(
              icon: const Icon(Icons.fitness_center),
              color: Colors.teal,
              onPressed: () {
                _onItemTapped(2);
              },
            ),
            IconButton(
              icon: const Icon(Icons.dashboard, color: Colors.teal), // Set the color to teal
              onPressed: () {
                _onItemTapped(0);
              },
            ),
          ],
        ), // Match the background color to the image
      ),
    );
  }

  Widget _getBodyContent(int index) {
    switch (index) {
      case 0:
        return const Text('Dashboard');
      case 1:
        return const Text('Statistics');
      case 2:
        return const Text('Workouts');
      case 3:
        return const Text('Profile');
      default:
        return const Text('Dashboard');
    }
  }
}
