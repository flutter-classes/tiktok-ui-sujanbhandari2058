import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
                Icons.home,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Feather.users,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Friends',
                style: TextStyle(color: Colors.white),
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
                Feather.message_square,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Inbox',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Ionicons.person_outline,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
