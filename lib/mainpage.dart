import 'package:flutter/material.dart';
import 'package:flutter_new_3/Screens/list_club_page.dart';
import 'package:flutter_new_3/Screens/list_event_page.dart';
import 'package:flutter_new_3/Screens/list_post_page.dart';
import 'package:flutter_new_3/Screens/user_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screen = [
    Center(child: Text('Trang chủ', style: TextStyle(fontSize: 72),)),
    ListClubPage(),
    ListPostPage(),
    ListEventPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    body: screen[index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade50,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
      ),
      child: NavigationBar(
        height: 65,
        backgroundColor:  Colors.cyan,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: index,
        animationDuration: Duration(seconds: 1),
        onDestinationSelected: (index) =>
            setState(() => this.index = index),
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.menu_outlined),
              selectedIcon: Icon(Icons.menu),
              label: 'Trang chủ',
          ),
          NavigationDestination(
              icon: Icon(Icons.shopping_basket_outlined),
              selectedIcon: Icon(Icons.shopping_basket),
              label: 'CLB'
          ),
          NavigationDestination(
              icon: Icon(Icons.my_library_books_outlined),
              selectedIcon: Icon(Icons.my_library_books_rounded),
              label: 'Bảng tin'
          ),
          NavigationDestination(
              icon: Icon(Icons.event_outlined),
              selectedIcon: Icon(Icons.event),
              label: 'Sự kiện'
          ),
          NavigationDestination(
              icon: Icon(Icons.person_outlined),
              selectedIcon: Icon(Icons.person),
              label: 'Cá nhân'
          ),
        ],
      ),
    ),
  );
}
