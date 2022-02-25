import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_3/event_list.dart';
import 'package:flutter_new_3/mainpage.dart';

class ListEventPage extends StatelessWidget{
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Incoming Events',),
    Tab(text: 'My Events',),
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
            icon: const Icon(Icons.search, color: Colors.cyan, size: 25,),
            tooltip: 'Search for event',
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
          EventList(title: 'Incoming Event'),
          EventList(title: 'Already Event'),
        ],
      ),
    ),
);

}
