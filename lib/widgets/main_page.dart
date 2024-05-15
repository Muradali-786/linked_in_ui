import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin_app_ui/home/home_screen.dart';
import 'package:linkin_app_ui/home/post_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  void onTabTapped(int index) {
    if (index == 2) {
       Navigator.push(
      context,MaterialPageRoute(
       builder: (context)=> const PostScreen()));
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
      return SafeArea(
          child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 22,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color(0xFF666666),
          showUnselectedLabels: true,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items:[
             BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill,
                size: 22,),
            label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.userGroup,
                  size: 22,),
                label: 'My Network'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.solidSquarePlus,
                  size: 22,),
                label: 'Post'),
             BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.bell_fill,
                  size: 22,),
                label: 'Notification'),
             BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.briefcase_fill,
                  size: 22,),
                label: 'Jobs')
          ],
        ),
            body:_children[
              _currentIndex
            ] ,
      ));
    });
  }
}
