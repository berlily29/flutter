import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shortee/screens/bookmark-screen.dart';
import 'package:shortee/screens/homescreen.dart';
import 'package:shortee/screens/search-screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeState();
}

class _HomeState extends State<MainScreen> {
  var wigetList = [
    HomeScreen(),
    BookmarkScreen(),
    SearchScreen(),
  ];

  int index = 0;
  late Color selectedItem = Color(0xFF231f20);
  Color unselectedItem = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4e7e95),
        ),
        body: index == 0
            ? HomeScreen()
            : index == 1
                ? SearchScreen()
                : BookmarkScreen(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF4e7e95),
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          elevation: 3,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill,
                  color: index == 0 ? selectedItem : unselectedItem),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search,
                  color: index == 1 ? selectedItem : unselectedItem),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bookmark_fill,
                  color: index == 2 ? selectedItem : unselectedItem),
              label: 'Bookmark',
            ),
          ],
        ),
      ),
    );
  }
}
