import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'tiktokIcons.dart';

class buttomWidget extends StatelessWidget {
  const buttomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                TikTokIcons.home,
                color: Colors.white,
                size: 22,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                TikTokIcons.search,
                size: 22,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Discover',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              )
            ],
          ),
          Container(
            child: Stack(alignment: Alignment.center, children: [
              Container(
                alignment: Alignment.centerRight,
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent),
                child: Container(
                  width: 40,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red),
                ),
              ),
              Container(
                width: 40,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Icon(Icons.add),
              )
            ]),

            //
            //
            //
            //
            //
            //
          ),
          Column(
            children: [
              Icon(
                TikTokIcons.messages,
                size: 22,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Inbox',
                style: TextStyle(fontSize: 11, color: Colors.white),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              
            },
            child: Column(
              children: [
                Icon(
                  TikTokIcons.profile,
                  size: 22,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 11, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
