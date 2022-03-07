import 'package:flutter/material.dart';
import 'package:test_app/Event_Pages/event_list.dart';
import 'package:test_app/Main_Pages/mainpage.dart';

class EventListPage extends StatelessWidget{
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Popular Events',),
    Tab(text: 'All Events',),
  ];

  final urlImage = 'https://scontent.fsgn2-2.fna.fbcdn.net/v/t39.30808-6/273461304_5009952582376796_7340044409596121858_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=evb0X4CbP2UAX9OILyB&_nc_ht=scontent.fsgn2-2.fna&oh=00_AT_SMU1YcupzcT4sPFxu3sy67_FHVqE36Yo5o1GN2YSY6Q&oe=6213B7A1';

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.event, color: Colors.cyan,size: 25),
        title: Text(
          'Events',
          style: TextStyle(
            fontSize: 20,
            color: Colors.cyan,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.filter_alt_rounded, color: Colors.cyan, size: 25,),
            tooltip: 'Filter Event',
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainPage()), //thay bang screen search
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        bottom:
        TabBar(
          labelColor: Colors.cyan, //đổi mảu chữ
          indicatorColor: Colors.cyan, //đổi màu gạch chân
          indicatorSize: TabBarIndicatorSize.label, //kích cỡ của cái index gạch ngang
          unselectedLabelColor: Colors.black, //đổi màu chữ của tab ko được chọn
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        children: [
          EventList(title: '[Sheraton Saigon] – International Dinner Buffet at Saigon Café Restaurant (on Weekday from Monday to Thursday)'),
          EventList(title: 'Already Event'),
        ],
      ),
    ),
  );

}
