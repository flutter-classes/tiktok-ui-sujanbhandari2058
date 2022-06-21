import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:tiktok_home_ui/jsonConvaterModel/hits.dart';

class centerWidget extends StatelessWidget {
  centerWidget({Key? key, required this.data}) : super(key: key);

  hits data;

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
                    "@" + data.user,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 12),
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
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '#' + data.tags,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
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
                Stack(alignment: AlignmentDirectional.center, children: [
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
                        data.userImageURL,
                        height: 50,
                        width: 50,
                      )),
                  Positioned(
                    bottom: 1,
                    left: 20,
                    child: Container(
                      height: 20,
                      width: 20,
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
                  '${data.views}',
                  style: TextStyle(color: Colors.white),
                ), //
                //
                //

                SizedBox(
                  height: 10,
                ),
                Icon(
                  Entypo.message,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  '${data.downloads}',
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
                  '${data.likes}',
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
                  '${data.comments}',
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
