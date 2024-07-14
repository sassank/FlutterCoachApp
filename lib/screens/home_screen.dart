import 'package:flutter/material.dart';
import 'package:go_coach/screens/home_page_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 6.0,
          color: const Color(0xFF009688), // Teal color
          child: SizedBox(
            height: 3.0, // Adjust this value to change the height
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.dashboard),
                  color: _selectedIndex == 0 ? Colors.white : Colors.black,
                  onPressed: () {
                    _onItemTapped(0);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.show_chart),
                  color: _selectedIndex == 1 ? Colors.white : Colors.black,
                  onPressed: () {
                    _onItemTapped(1);
                  },
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF00796B), // Darker teal color
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    color: _selectedIndex == 2 ? Colors.white : Colors.black,
                    onPressed: () {
                      // Add action for the floating button
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.fitness_center),
                  color: _selectedIndex == 3 ? Colors.white : Colors.black,
                  onPressed: () {
                    _onItemTapped(3);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  color: _selectedIndex == 4 ? Colors.white : Colors.black,
                  onPressed: () {
                    _onItemTapped(4);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getBodyContent(int index) {
    if (index == 0) {
      return const HomePageWidget();
    } else {
      return const Text('Autre contenu');
    }
  }
}
