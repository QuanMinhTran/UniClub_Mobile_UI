import 'package:flutter/material.dart';

class PostPage extends StatelessWidget{
  final String name;
  final String urlImage;

  const PostPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.deepOrange,
      title: Text(name),
      centerTitle: true,
    ),
    body: ListView(
      children: <Widget>[
        SizedBox(height : 20),
        Image(
          image: NetworkImage(urlImage),
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(height : 12),
        Text(
          'Vũ trụ xin gửi đến bạn một tín hiệu: “Valentine năm nay bạn sẽ chẳng còn một mình nữa đâu” bởi vì Lovelott 6 đã mang năng lượng tình yêu đến cho bạn rồi đấy. Tại đây, những trái tim cô đơn sẽ tìm thấy nơi mình thuộc về và những "mối lương duyên" còn bỏ ngỏ sẽ có cơ hội đơm hoa kết trái. Tiếp tục sứ mệnh trong suốt 5 mùa vừa qua, Lovelott mùa 6 do Câu lạc bộ Truyền thông Cóc Sài Gòn tổ chức đã quay trở lại với hàng loạt những hoạt động cực kỳ xịn sò: ',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    ),
  );
}