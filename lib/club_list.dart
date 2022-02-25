import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_3/Screens/club_detail.dart';
import 'package:flutter_new_3/Screens/post_page.dart';

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
                          'https://scontent.fsgn2-1.fna.fbcdn.net/v/t39.30808-6/274079580_2102587819897647_1463341649329326741_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=waxehcUlH8UAX_zIYOw&_nc_ht=scontent.fsgn2-1.fna&oh=00_AT84nIX13VCO3JR6J7Vp1L5YE_AgO2O9GFh2rw6Zr8hZbQ&oe=621D1521',
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
                    color: Colors.black54.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 2,
                  )
                ]),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: NetworkImage(
                        'https://scontent.fsgn2-1.fna.fbcdn.net/v/t39.30808-6/274079580_2102587819897647_1463341649329326741_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=waxehcUlH8UAX_zIYOw&_nc_ht=scontent.fsgn2-1.fna&oh=00_AT84nIX13VCO3JR6J7Vp1L5YE_AgO2O9GFh2rw6Zr8hZbQ&oe=621D1521'),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Join'),
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
