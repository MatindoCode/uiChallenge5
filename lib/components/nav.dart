import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavG extends StatelessWidget {
  const NavG({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
  rippleColor: Colors.grey.shade800, // tab button ripple color when pressed
  hoverColor: Colors.grey.shade700, // tab button hover color
  haptic: true, // haptic feedback
  tabBorderRadius: 15, 
  tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
  curve: Curves.easeOutExpo, // tab animation curves
  duration: const Duration(milliseconds: 900), // tab animation duration
  gap: 8, // the tab button gap between icon and text 
  color: Colors.grey[300], // unselected icon color
  activeColor: Colors.white, // selected icon and text color
  iconSize: 24, // tab button icon size
  tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // navigation bar padding
  tabs: const [
    GButton(
      icon: Icons.home,
      text: 'Home',
    ),
    GButton(
      icon: Icons.heart_broken_outlined,
      text: 'Likes',
    ),
    GButton(
      icon: Icons.search,
      text: 'Search',
    ),
    GButton(
      icon: Icons.face,
      text: 'Profile',
    )
  ]
);
  }
}