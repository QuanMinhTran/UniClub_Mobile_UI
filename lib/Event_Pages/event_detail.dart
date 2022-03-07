import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  final String name;
  final String urlImage;

  const EventDetail({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildCoverImage(name, urlImage),
    );
  }

  Widget buildCoverImage(String name, String urlImage) => Stack(
    children: <Widget>[
      ClipRRect(
        child: Image(
          image: NetworkImage(urlImage),
          width: double.infinity,
          height: 280,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0, top: 220, right: 0, bottom: 0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Acumin-italic',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add, size: 25),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'JOIN EVENT',
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.share, size: 25),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'SHARE EVENT',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.timer, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Time:',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acumin-italic',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      'Tuesday, 1st March',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontFamily: 'Acumin-italic',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                  thickness: 1,
                  endIndent: 0,
                  indent: 0,
                  color: Colors.grey),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.location_on_rounded, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Location:',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acumin-italic',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      'FPT University, Floor 2',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontFamily: 'Acumin-italic',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                  thickness: 1,
                  endIndent: 0,
                  indent: 0,
                  color: Colors.grey),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.attach_money_rounded, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'free ticket'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acumin-italic',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                  thickness: 1,
                  endIndent: 0,
                  indent: 0,
                  color: Colors.grey),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.people, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Participants',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acumin-italic',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  Expanded(
                    child: Text(
                      '+100 people\n Reward : 50 beans/peson',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontFamily: 'Acumin-italic',
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                  thickness: 15,
                  endIndent: 0,
                  indent: 0,
                  color: Colors.black26),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'About'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Acumin-italic',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Divider(
                  thickness: 1,
                  endIndent: 0,
                  indent: 0,
                  color: Colors.black26),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Long Desc about Event \nLong Desc about Event \nLong Desc about Event \nLong Desc about Event \nLong Desc about Event \nLong Desc about Event \nLong Desc about Event \nLong Desc about Event',
                    style: TextStyle(
                      fontFamily: 'Acumin-italic',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                  thickness: 15,
                  endIndent: 0,
                  indent: 0,
                  color: Colors.black26),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Organizer'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Acumin-italic',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Divider(
                  thickness: 1,
                  endIndent: 0,
                  indent: 0,
                  color: Colors.black26),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage('https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/264791813_2045304538959309_4858790322761486546_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=174925&_nc_ohc=KZEsAqDttVkAX8PlQyT&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_SphWlLiJZPtNUXQW0NfdGArBORXOS88U4gG3NaZh7rg&oe=622A2625'),
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('CLB DÀI LÒNG THÒNG ĐẾN NỖI TRÀN MÀN HÌNH'),
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage('https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/264791813_2045304538959309_4858790322761486546_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=174925&_nc_ohc=KZEsAqDttVkAX8PlQyT&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_SphWlLiJZPtNUXQW0NfdGArBORXOS88U4gG3NaZh7rg&oe=622A2625'),
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('CLB DÀI VỪA VỪA'),
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage('https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/264791813_2045304538959309_4858790322761486546_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=174925&_nc_ohc=KZEsAqDttVkAX8PlQyT&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_SphWlLiJZPtNUXQW0NfdGArBORXOS88U4gG3NaZh7rg&oe=622A2625'),
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('CLB NGẮN'),
                      ],
                    ),
                    SizedBox(width: 20,),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
