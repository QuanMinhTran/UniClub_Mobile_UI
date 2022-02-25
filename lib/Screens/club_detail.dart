import 'package:flutter/material.dart';

class ClubDetail extends StatelessWidget {
  final String name;
  final String urlImage;

  const ClubDetail({
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
        margin: EdgeInsets.only(left: 0, top: 200, right: 0, bottom: 0),
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
                  alignment: Alignment.topLeft,
                  child: Text(
                    name,
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
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today_rounded),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'TUE, FEB 26, 2022',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acumin-italic',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today_rounded),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Uni Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acumin-italic',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today_rounded),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Short Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acumin-italic',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today_rounded),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Slogan',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acumin-italic',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: CircleAvatar(
                              child: Icon(Icons.people,
                                  color: Colors.white, size: 18),
                              backgroundColor: Colors.black87,
                              maxRadius: 14),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'MemberCount',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acumin-italic',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'About us: \nCâu lạc bộ truyền thông với những người trẻ có niềm đam mê trong lĩnh vực truyền thông, cùng nhau gắn kết và mang lại những giá trị cho cộng đồng trẻ \n Cóc Sài Gòn mong muốn mang đến cho cộng đồng sinh viên FPT nói riêng và người trẻ nói chung những dự án (cuộc thi, hoạt động, sự kiện, hội thảo, workshop, talkshow, chuyên mục,...)\n Đề cao sự sáng tạo và luôn làm mới mẻ nội dung, câu lạc bộ muốn mang đến giá trị, sự quan tâm, niềm yêu thích đến người trẻ thông qua từng dự án.\nâu lạc bộ truyền thông với những người trẻ có niềm đam mê trong lĩnh vực truyền thông, cùng nhau gắn kết và mang lại những giá trị cho cộng đồng trẻ \n Cóc Sài Gòn mong muốn mang đến cho cộng đồng sinh viên FPT nói riêng và người trẻ nói chung những dự án (cuộc thi, hoạt động, sự kiện, hội thảo, workshop, talkshow, chuyên mục,...)\n Đề cao sự sáng tạo và luôn làm mới mẻ nội dung, câu lạc bộ muốn mang đến giá trị, sự quan tâm, niềm yêu thích đến người trẻ thông qua từng dự án',
                    style: TextStyle(
                      fontFamily: 'Acumin-italic',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                child: Text(
                  'JOIN US',
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}


// class ClubDetail extends StatefulWidget {
//   final String name;
//   final String urlImage;
//
//   const ClubDetail({
//     Key? key,
//     required this.name,
//     required this.urlImage,
//   }) : super(key: key);
//
//   @override
//   _ClubDetailState createState() => _ClubDetailState();
// }

// class _ClubDetailState extends State<ClubDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: buildCoverImage(),
//     );
//   }