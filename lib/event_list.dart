import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_3/Screens/post_page.dart';

class EventList extends StatelessWidget {

  final String title;

  const EventList({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    PostPage(
                      name: title,
                      urlImage: '',
                    )));
          },
          child : Container(
            margin: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            height: 210,
            width : MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 2,
                  )
                ]
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('Images/default_event.png'),
                    height: 100,
                    width : MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(title,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Type',
                              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('9:00AM - 10:00PM',
                              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                          height: 60,
                          width : 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54.withOpacity(0.5),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('22',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: 'Acumin-bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Feb',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Acumin-italic',
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black54),),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    PostPage(
                      name: title,
                      urlImage: '',
                    )));
          },
          child : Container(
            margin: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            height: 210,
            width : MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 2,
                  )
                ]
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('Images/default_event.png'),
                    height: 100,
                    width : MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(title,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Type',
                              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('9:00AM - 10:00PM',
                              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Container(
                          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                          height: 60,
                          width : 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54.withOpacity(0.5),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('22',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: 'Acumin-bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Feb',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Acumin-italic',
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black54),),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
