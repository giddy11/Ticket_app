import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    const Center (child: Text("Home")),
    const Center (child: Text("Search")),
    const Center (child: Text("Tickets")),
    const Center (child: Text("Profile")),
  ];

  //change our index for bottomNavBar
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    // _selectedIndex = index;
    print("Tapped index is $_selectedIndex");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text("My tickets"),
        ),
        body: appScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => _onItemTapped(value),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xff526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: "Home",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: "Search",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              label: "Tickets",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              label: "Profile",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ),
          ],
        )
      );
  }
}