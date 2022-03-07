import 'package:flutter/material.dart';
import 'package:test_app/Club_Pages/club_detail.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: new AppBar(
      leading: Icon(
        Icons.task,
        color: Colors.cyan,
      ),
      title: const Text(
        'Tasks',
        style: TextStyle(
          fontSize: 20,
          color: Colors.cyan,
        ),
      ),
      backgroundColor: Colors.white,
    ),
    body: ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  left: 5, top: 20, right: 5, bottom: 10),
              height: 100,
              width: (MediaQuery.of(context).size.width / 2) - 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.4),
                      blurRadius: 1,
                      spreadRadius: 3,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.content_paste_search_rounded, size: 25),
                  Text(
                    'To Do',
                    style:
                    TextStyle(fontSize: 20, fontFamily: 'Acumin-bold'),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 5, top: 20, right: 5, bottom: 10),
              height: 100,
              width: (MediaQuery.of(context).size.width / 2) - 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellowAccent.withOpacity(0.4),
                      blurRadius: 1,
                      spreadRadius: 3,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.content_paste_go_rounded, size: 25),
                  Text(
                    'In progress',
                    style:
                    TextStyle(fontSize: 20, fontFamily: 'Acumin-bold'),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  left: 5, top: 20, right: 5, bottom: 10),
              height: 100,
              width: (MediaQuery.of(context).size.width / 2) - 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.4),
                      blurRadius: 1,
                      spreadRadius: 3,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.content_paste_rounded, size: 25),
                  Text(
                    'Done',
                    style:
                    TextStyle(fontSize: 20, fontFamily: 'Acumin-bold'),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 5, top: 20, right: 5, bottom: 10),
              height: 100,
              width: (MediaQuery.of(context).size.width / 2) - 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.4),
                      blurRadius: 1,
                      spreadRadius: 3,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.content_paste_off_rounded, size: 25),
                  Text(
                    'Canceled',
                    style:
                    TextStyle(fontSize: 20, fontFamily: 'Acumin-bold'),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Your Task',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            // Icon(
            //   Icons.plus_one_rounded,
            //   size: 25,
            // ),
          ],
        ),
        Container(
          margin:
          const EdgeInsets.only(left: 5, top: 20, right: 5, bottom: 10),
          height: 80,
          width: (MediaQuery.of(context).size.width / 2) - 10,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.lightGreenAccent.withOpacity(0.4),
                  blurRadius: 1,
                  spreadRadius: 3,
                )
              ]),
          child: Row(
            children: <Widget>[
              Icon(Icons.check_box_rounded,
                  size: 30, color: Colors.lightGreenAccent),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Task 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.check_box_rounded,
                    size: 30, color: Colors.lightGreenAccent),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ClubDetail(
                        name: 'Task 1',
                        urlImage:
                        'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/240777656_1960935207396243_8476691241259762409_n.png?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=vPPdmBhHQBQAX9KHQ8h&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_Ygntzdl3r8O69nXfm2-I4q6gW4QHktwTO4Jc4Htj2Yg&oe=6223E06E',
                      )));
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
