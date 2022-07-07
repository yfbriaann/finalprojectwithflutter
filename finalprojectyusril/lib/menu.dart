import 'package:finalprojectyusril/home_page.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:finalprojectyusril/profile.dart';

import 'product.dart';


class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
    
  }

  final List<Widget> _pages = [
    halaman_utama(),
    Product(),
    profil()
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      

      // ignore: prefer_const_constructors
      bottomNavigationBar: Container(
        color: Color.fromRGBO(255, 59, 47, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromRGBO(255, 59, 47, 1),
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white,
            gap: 30,
            padding: EdgeInsets.all(16),
            selectedIndex: _selectedIndex,
            onTabChange: _navigateBottomBar,
            tabs: const [

              GButton(
                icon: Icons.home,
                text: 'Home',
                
                
                ),
              
              GButton(
                icon: Icons.search,
                text: 'Search',),
              
              GButton(
                icon: Icons.person,
                text: 'Profile',)
              
            ]),
        ),
      ),  

        

      body: _pages[_selectedIndex],
    );
  }
}