import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  final String name;
  final String urlImage;

  const PostDetail({
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

  Widget buildCoverImage(String name, String urlImage) => Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Title' + name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage(urlImage),
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.fill,
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
                      '\nCâu lạc bộ truyền thông với những người trẻ có niềm đam mê trong lĩnh vực truyền thông, cùng nhau gắn kết và mang lại những giá trị cho cộng đồng trẻ \n Cóc Sài Gòn mong muốn mang đến cho cộng đồng sinh viên FPT nói riêng và người trẻ nói chung những dự án (cuộc thi, hoạt động, sự kiện, hội thảo, workshop, talkshow, chuyên mục,...)\n Đề cao sự sáng tạo và luôn làm mới mẻ nội dung, câu lạc bộ muốn mang đến giá trị, sự quan tâm, niềm yêu thích đến người trẻ thông qua từng dự án.\nâu lạc bộ truyền thông với những người trẻ có niềm đam mê trong lĩnh vực truyền thông, cùng nhau gắn kết và mang lại những giá trị cho cộng đồng trẻ \n Cóc Sài Gòn mong muốn mang đến cho cộng đồng sinh viên FPT nói riêng và người trẻ nói chung những dự án (cuộc thi, hoạt động, sự kiện, hội thảo, workshop, talkshow, chuyên mục,...)\n Đề cao sự sáng tạo và luôn làm mới mẻ nội dung, câu lạc bộ muốn mang đến giá trị, sự quan tâm, niềm yêu thích đến người trẻ thông qua từng dự án',
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage(urlImage),
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'ảnh mô tả 1',
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\nCâu lạc bộ truyền thông với những người trẻ có niềm đam mê trong lĩnh vực truyền thông, cùng nhau gắn kết và mang lại những giá trị cho cộng đồng trẻ \n Cóc Sài Gòn mong muốn mang đến cho cộng đồng sinh viên FPT nói riêng và người trẻ nói chung những dự án (cuộc thi, hoạt động, sự kiện, hội thảo, workshop, talkshow, chuyên mục,...)\n Đề cao sự sáng tạo và luôn làm mới mẻ nội dung, câu lạc bộ muốn mang đến giá trị, sự quan tâm, niềm yêu thích đến người trẻ thông qua từng dự án.\nâu lạc bộ truyền thông với những người trẻ có niềm đam mê trong lĩnh vực truyền thông, cùng nhau gắn kết và mang lại những giá trị cho cộng đồng trẻ \n Cóc Sài Gòn mong muốn mang đến cho cộng đồng sinh viên FPT nói riêng và người trẻ nói chung những dự án (cuộc thi, hoạt động, sự kiện, hội thảo, workshop, talkshow, chuyên mục,...)\n Đề cao sự sáng tạo và luôn làm mới mẻ nội dung, câu lạc bộ muốn mang đến giá trị, sự quan tâm, niềm yêu thích đến người trẻ thông qua từng dự án',
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage(urlImage),
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'ảnh mô tả 2',
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      );
}
