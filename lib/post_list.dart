import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_3/Screens/club_detail.dart';
import 'package:flutter_new_3/Screens/post_page.dart';

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
    return ListView(
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
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
                height: 100,
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
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(120, 10, 5, 0),
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
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(120, 0, 5, 0),
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
                padding: EdgeInsets.fromLTRB(12, 12, 0, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: NetworkImage(
                        'https://scontent.fsgn2-1.fna.fbcdn.net/v/t39.30808-6/274079580_2102587819897647_1463341649329326741_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=waxehcUlH8UAX_zIYOw&_nc_ht=scontent.fsgn2-1.fna&oh=00_AT84nIX13VCO3JR6J7Vp1L5YE_AgO2O9GFh2rw6Zr8hZbQ&oe=621D1521'),
                    height: 100,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
    //   ListView(
    //   children: <Widget>[
    //     InkWell(
    //       onTap: (){
    //         Navigator.of(context).push(MaterialPageRoute(
    //             builder: (context) =>
    //                 PostPage(
    //                   name: title,
    //                   urlImage: '',
    //                 )));
    //       },
    //       child : Container(
    //         margin: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
    //         padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
    //         height: 180,
    //         width : MediaQuery.of(context).size.width,
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(10),
    //                 topRight: Radius.circular(10),
    //                 bottomLeft: Radius.circular(10),
    //                 bottomRight: Radius.circular(10)
    //             ),
    //             boxShadow: [
    //               BoxShadow(
    //                 color: Colors.black54.withOpacity(0.5),
    //                 blurRadius: 7,
    //                 spreadRadius: 2,
    //               )
    //             ]
    //         ),
    //         child: Column(
    //           // mainAxisAlignment: MainAxisAlignment.start,
    //           // crossAxisAlignment: CrossAxisAlignment.center,
    //           // mainAxisSize: MainAxisSize.max,
    //           children: <Widget>[
    //             ClipRRect(
    //               borderRadius: BorderRadius.circular(8.0),
    //               child: Image(
    //                 image: AssetImage('Images/default_event.png'),
    //                 height: 100,
    //                 width : MediaQuery.of(context).size.width,
    //                 fit: BoxFit.fill,
    //               ),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Column(
    //                   children: [
    //                     Padding(
    //                       padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
    //                       child: Align(
    //                         alignment: Alignment.bottomLeft,
    //                         child: Text(title,
    //                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
    //                       child: Align(
    //                         alignment: Alignment.bottomLeft,
    //                         child: Text('23-02-2022 19:20 PM',
    //                           style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),),
    //                       ),
    //                     ),
    //                     // Padding(
    //                     //   padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
    //                     //   child: Align(
    //                     //     alignment: Alignment.bottomLeft,
    //                     //     child: Text('9:00AM - 10:00PM',
    //                     //       style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),),
    //                     //   ),
    //                     // ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //
    //   ],
    // );
  }
}
