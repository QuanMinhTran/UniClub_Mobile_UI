import 'package:flutter/material.dart';
import 'package:test_app/Club_Pages/club_list.dart';
import 'package:test_app/Main_Pages/mainpage.dart';

class ClubListPage extends StatelessWidget{

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'My Clubs',),
    Tab(text: 'Other Clubs',),
  ];
  final urlImage = 'https://dhacorp.com.vn/images/product/the-xinh-village.jpg';

  @override
  Widget build(BuildContext context) =>
      DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: new AppBar(
            leading: Icon(Icons.menu_book, color: Colors.cyan,size: 25),
            title: Text(
              'Clubs',
              style: TextStyle(
                fontSize: 20,
                color: Colors.cyan,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search, color: Colors.cyan, size: 25,),
                tooltip: 'Search for club',
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()), //thay bang screen search
                  );
                },
              ),
            ],
            backgroundColor: Colors.white, //xem xét thử ?
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
              ClubList(title: 'CÂU LẠC BỘ TRUYỀN THÔNG CÓC SÀI GÒN'),
              // Name
              // ShortName
              // Short Desc
              // Ảnh CLB ?
              ClubList(title: 'Other Clubs'),
            ],
          ),
        ),
      );
}