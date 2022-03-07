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
            mainAxisAlignment: MainAxisAlignment.center,
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
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Acumin-italic',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.timer, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Established Date:',
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
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.school, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'University:',
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
                      'FPT University',
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
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.document_scanner_rounded, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Slogan:',
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
                      'Coc Sai Gon Slogan',
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
                height: 20,
              ),

              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Icon(Icons.people, size: 20),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Members:',
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
                      '+2000 members since established \n +100 members this year',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
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
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    ),
                    child: Text(
                      'CONNECT US',
                    ),
                  ),
                ],
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