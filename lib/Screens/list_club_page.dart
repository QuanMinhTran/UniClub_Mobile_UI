import 'package:flutter/material.dart';
import 'package:flutter_new_3/Screens/post_page.dart';
import 'package:flutter_new_3/club_list.dart';
import 'package:flutter_new_3/event_list.dart';
import 'package:flutter_new_3/mainpage.dart';

class ListClubPage extends StatelessWidget{

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
              'University Clubs',
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

//     Scaffold(
//   body: ListView(
//     children: <Widget>[
//       Padding(padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0)),
//
//       InkWell(
//         onTap: (){
//           Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) =>
//                   PostPage(
//                     name: 'Event title',
//                     urlImage: urlImage,
//                   )));
//         },
//         child : Container(
//           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
//           padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
//           height: 200,
//           width : MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//               color: Colors.cyan.shade200,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10)
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.cyanAccent.withOpacity(0.5),
//                   blurRadius: 7,
//                   spreadRadius: 3,
//                 )
//               ]
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.bottomLeft,
//               ),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(8.0),
//                 child: Image(
//                   image: NetworkImage(urlImage),
//                   height: 200,
//                   width: 100,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Padding (
//                 padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                 child: Column(
//                   children:<Widget> [
//                     Text('Post Title', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
//                     Text('Post Pre Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//
//
//     ],
//   ),
// );
}