import 'package:flutter/material.dart';
import 'package:test_app/Club_Pages/club_list_page.dart';
import 'package:test_app/Event_Pages/event_list_page.dart';
import 'package:test_app/Post_Pages/post_list_page.dart';
import 'package:test_app/User_Pages/userpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screen = [
    Center(child: Text('Trang chủ', style: TextStyle(fontSize: 72),)),
    ClubListPage(),
    PostListPage(),
    EventListPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    body: screen[index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade50,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.menu_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
              icon: Icon(Icons.menu_book_outlined),
              selectedIcon: Icon(Icons.menu_book),
              label: 'Club'
          ),
          NavigationDestination(
              icon: Icon(Icons.my_library_books_outlined),
              selectedIcon: Icon(Icons.my_library_books_rounded),
              label: 'News'
          ),
          NavigationDestination(
              icon: Icon(Icons.event_outlined),
              selectedIcon: Icon(Icons.event),
              label: 'Events'
          ),
          NavigationDestination(
              icon: Icon(Icons.person_outlined),
              selectedIcon: Icon(Icons.person),
              label: 'Profile'
          ),
        ],
      ),
    ),
  );
}
