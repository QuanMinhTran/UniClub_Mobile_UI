import 'package:flutter/material.dart';
import 'package:flutter_new_3/mainpage.dart';
import 'package:flutter_new_3/welcome_screen.dart';

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
    return Column(
      children: <Widget> [
        Padding(
            padding: EdgeInsets.fromLTRB(30, 50, 0, 30),
            child : Row(
              children: <Widget> [
                Text('Trang cá nhân', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()), //Thay bằng page edit
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(115, 0, 0, 0),
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
                Positioned(bottom: 1, right: 1,child: Container(
                  height: 40, width:  40,
                  child: Icon(Icons.add_a_photo, color: Colors.white,),
                  decoration: BoxDecoration(
                    // color: Color.fromRGBO(24, 255, 255, 400),
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ))
              ],
            ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              // color: Colors.cyanAccent.shade700,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('Tên: '+'????????', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1.0, color: Colors.cyanAccent)),
                    )
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('Ngày Sinh: '+'????????', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1.0, color: Colors.cyanAccent)),
                    )
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('Địa chỉ: '+'????????', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1.0, color: Colors.cyanAccent)),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Container(
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Email: '+'????????', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 1.0, color: Colors.cyanAccent)),
                  ),
                ),
              ],
            ),
          ),
          ),
      ],
    );
  }
}

