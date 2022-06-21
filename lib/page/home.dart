import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktok_home_ui/jsonConvaterModel/hits.dart';
import 'package:tiktok_home_ui/page/pageView.dart';
import 'package:tiktok_home_ui/widget/buttomWidget.dart';
import 'package:tiktok_home_ui/widget/centerWiget.dart';
import 'package:tiktok_home_ui/widget/topWidget.dart';
import 'package:http/http.dart' as Http;

class home extends StatefulWidget {
  const home({
    Key? key,
  }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<hits> DataRes = [];

  String api =
      'https://pixabay.com/api/videos/?key=28109076-e751a6f7bf9e3a446a73d31ac&q=yellow+flowers&pretty=true';
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    try {
      var uri = Uri.parse(api);

      var res = await Http.get(uri);

      Map DecodedRes = jsonDecode(res.body);
      // print(DecodedRes);

      List hitsMap = DecodedRes['hits'];
      // print(hitsMap);

      DataRes = hitsMap.map<hits>((item) {
        final convartedList = hits.jsonToDart(item);
        return convartedList;
      }).toList();

      print(DataRes.length);
      setState(() {});
    } catch (e) {}
  }

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
                    child: pageView(DataRes: DataRes),
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
