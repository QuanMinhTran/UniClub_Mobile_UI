import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Event_Pages/event_detail.dart';

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
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EventDetail(
                  name: title,
                  urlImage:
                  'https://www.teahub.io/photos/full/318-3188472_resident-evil-7-biohazard.jpg',
                )));
          },
          child: Container(
            margin: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            height: 230,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 2,
                  )
                ]),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image(
                    image: NetworkImage(
                        'https://www.teahub.io/photos/full/318-3188472_resident-evil-7-biohazard.jpg'),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.bookmarks_rounded,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Event Type',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Acumin-italic',
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on_rounded,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Event location',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Acumin-italic',
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.people,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Participant amount',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Acumin-italic',
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Icon ngay //
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0.0),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black54.withOpacity(0.5),
                                      blurRadius: 2,
                                      spreadRadius: 1,
                                    )
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 1, horizontal: 1),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Mar',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Acumin-bold',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Acumin-italic',
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Tue',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Acumin-italic',
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )
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
