import 'package:flutter/material.dart';
import 'package:test_app/Club_Pages/club_detail.dart';

class ClubList extends StatelessWidget {
  final String title;

  const ClubList({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ClubDetail(
                    name: title,
                    urlImage:
                    'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/240777656_1960935207396243_8476691241259762409_n.png?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=fxvCTm5b_A8AX-jOlD7&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8k8dVewmmEQOt4_2n9YFswgktdDrmBp9SkTsogEtQi0w&oe=6229CF2E',
                  )));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26.withOpacity(0.5),
                      blurRadius: 8,
                      spreadRadius: 2,
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: NetworkImage('https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/240777656_1960935207396243_8476691241259762409_n.png?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=fxvCTm5b_A8AX-jOlD7&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8k8dVewmmEQOt4_2n9YFswgktdDrmBp9SkTsogEtQi0w&oe=6229CF2E'),
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                        child: Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                ],
              ),
            ),
          ),
        ],
      );
  }
}
