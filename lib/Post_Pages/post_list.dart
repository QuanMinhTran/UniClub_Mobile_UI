import 'package:flutter/material.dart';
import 'package:test_app/Post_Pages/post_detail.dart';


class PostList extends StatelessWidget {
  final String title;
  final String subTitle;

  const PostList({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PostDetail( //thay bang post detail
                  name: title,
                  urlImage:
                  'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/240777656_1960935207396243_8476691241259762409_n.png?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=fxvCTm5b_A8AX-jOlD7&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8k8dVewmmEQOt4_2n9YFswgktdDrmBp9SkTsogEtQi0w&oe=6229CF2E',
                )));
          },
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
                height: 130,
                width: MediaQuery.of(context).size.width - 20,
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
                  children: <Widget>[
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(140, 5, 10, 0),
                          child: Text(
                            title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Acumin-italic',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(140, 5, 10, 0),
                          child: Text(
                            subTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Acumin-italic',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(120, 12, 10, 0),
                          child: Text(
                            '25/2/2022 - 9:00AM',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Acumin-italic',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: NetworkImage('https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/264791813_2045304538959309_4858790322761486546_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=174925&_nc_ohc=KZEsAqDttVkAX8PlQyT&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT_SphWlLiJZPtNUXQW0NfdGArBORXOS88U4gG3NaZh7rg&oe=622A2625'),
                    height: 120,
                    width: 120,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
