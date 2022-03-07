import 'package:flutter/material.dart';
import 'package:test_app/Main_Pages/mainpage.dart';
import 'package:test_app/Task_Pages/task_page.dart';

import '../Main_Pages/welcome_screen.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: profileView()
  );

  Widget profileView(){
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 30),
                child : Row(
                  children: <Widget> [
                    Text('PROFILE', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()), //Thay bằng page edit
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 0, 0, 0),
                        child: Container(height: 50, width: 50,
                          child: Icon(Icons.edit, size: 24, color: Colors.cyanAccent),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyanAccent),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WelcomeScreen()), //Thay bằng page edit
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Container(height: 50, width: 50,
                          child: Icon(Icons.logout, size: 24, color: Colors.cyanAccent),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyanAccent),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 70,
                    child: ClipOval(
                      child: Image.asset('Images/avatar.png', height: 150, width: 150, fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()), //Thay bằng page edit
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: Container(height: 130, width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          // Icon(Icons.logout, size: 30, color: Colors.cyanAccent),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image: AssetImage('Images/tickets.jpg'),
                              height: 80,
                              width: 80,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text('Tickets'.toUpperCase(),
                            style: TextStyle(
                              fontFamily: "Acumin-italic",
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyanAccent),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskPage()), //Thay bằng page edit
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: Container(height: 130, width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          // Icon(Icons.logout, size: 30, color: Colors.cyanAccent),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image: AssetImage('Images/tasks.png'),
                              height: 80,
                              width: 60,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text('Task'.toUpperCase(),
                            style: TextStyle(
                              fontFamily: "Acumin-italic",
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyanAccent),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

