import 'package:flutter/material.dart';
import 'package:flutter_new_3/Screens/post_page.dart';

class ListPostPage extends StatelessWidget{

  final urlImage = 'https://dhacorp.com.vn/images/product/the-xinh-village.jpg';

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0)),

        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    PostPage(
                      name: 'Event title',
                      urlImage: urlImage,
                    )));
          },
          child : Container(
            margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            height: 200,
            width : MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.cyan.shade200,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.cyanAccent.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 3,
                  )
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: NetworkImage(urlImage),
                    height: 200,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding (
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children:<Widget> [
                      Text('Post Title', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text('Post Pre Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),


      ],
    ),
  );
}