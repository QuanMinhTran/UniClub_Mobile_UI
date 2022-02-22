import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_3/mainpage.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.cyan.shade300,
          ),
          Container(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          )
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 60,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 14),
                          prefixIcon: Icon(Icons.email,
                              color: Colors.white),
                          hintText: 'Enter your Email',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          )
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 60,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 14),
                          prefixIcon: Icon(Icons.lock,
                              color: Colors.white),
                          hintText: 'Enter your Password',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 35),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child: Text('Đăng nhập'.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: Size(double.infinity, 35),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Đăng nhập bằng Gmail'.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
