import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class centerWidget extends StatelessWidget {
  const centerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              height: 130,
              // color: Colors.black38,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@suzanchhetri',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '#444 How we Git Down',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '@samson_rambo237 @tonypati4 @mautoa',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '#exitfour44 #thegitup',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
            width: 70,
            height: 400,
            // color: Colors.black,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 70,
                    width: 70,
                  ),
                  Container(
                    height: 53,
                    width: 53,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkq96a4bkVzlgF-FiQdyx7KOPb-kk71ONjXteyLZWHUUVrwrkT8xxuXAR2uHYUt5YZ33o&usqp=CAU',
                        height: 50,
                        width: 50,
                      )),
                  Positioned(
                    bottom: 8,
                    left: 19,
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                ]),

                //
                //
                //

                SizedBox(
                  height: 15,
                ),
                Icon(
                  FontAwesome.heart,
                  color: Colors.white,
                  size: 35,
                ),
                Text(
                  '3487',
                  style: TextStyle(color: Colors.white),
                ), //
                //
                //

                SizedBox(
                  height: 15,
                ),
                Icon(
                  Entypo.message,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  '3487',
                  style: TextStyle(color: Colors.white),
                ),

                SizedBox(
                  height: 15,
                ),
                Icon(
                  FontAwesome.bookmark,
                  color: Colors.white,
                  size: 35,
                ),
                Text(
                  '41',
                  style: TextStyle(color: Colors.white),
                ), //
                //
                //

                SizedBox(
                  height: 15,
                ),
                Icon(
                  Fontisto.share_a,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  '8',
                  style: TextStyle(color: Colors.white),
                ), //
                //
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
