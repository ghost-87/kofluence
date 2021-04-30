import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
//        navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, color: Colors.grey),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment, color: Colors.grey),
          title: Text(
            'Insights',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.grey),
          title: Text(
            'Notifications',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFfd5352),
      onTap: _onItemTapped,
    );
  }
}
