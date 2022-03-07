import 'package:flutter/material.dart';
import 'package:test_app/Main_Pages/mainpage.dart';
import 'package:test_app/Post_Pages/post_list.dart';


class PostListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.my_library_books, color: Colors.cyan, size: 25),
        title: Text(
          'News',
          style: TextStyle(
            fontSize: 20,
            color: Colors.cyan,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.filter_alt_rounded,
              color: Colors.cyan,
              size: 25,
            ),
            tooltip: 'Filter News',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MainPage()), //thay bang screen search
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          PostList(
            title: 'LoveLott trở lại và lợi hại hơn xưa',
            subTitle:
            'Lovelott đã trở lại và mang đến nhiều điều thú vị hơn đang chờ đón bạn',
          ),
          //array se truyen nhieu hon 1 string//
          PostList(
            title: 'Club News long and long and so so long too long too too long',
            subTitle: 'SubTitle too long so long long and long and long long so and so so long that too long',
          ),
        ],
      ),
    ),
  );
}
