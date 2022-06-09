import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:tiktok_home_ui/page/pageView.dart';
import 'package:tiktok_home_ui/widget/buttomWidget.dart';
import 'package:tiktok_home_ui/widget/centerWiget.dart';
import 'package:tiktok_home_ui/widget/topWidget.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 38,
                ),
                Expanded(
                  child: Container(
                    child: pageView(),
                  ),
                ),
                Container(
                  child: buttomWidget(),
                )
              ],
            ),
            Container(
              child: topWidget(),
            )
          ],
        ),
      ),
    );
  }
}
