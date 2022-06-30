import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_home_ui/jsonConvaterModel/hits.dart';
import 'package:tiktok_home_ui/widget/centerWiget.dart';
import 'package:tiktok_home_ui/widget/video.dart';
import 'package:http/http.dart' as api;

class pageView extends StatefulWidget {
  pageView({Key? key, required this.DataRes}) : super(key: key);

  List<hits> DataRes;
  var com = 1;

  @override
  State<pageView> createState() => pageViewState();
}

class pageViewState extends State<pageView> {
  var page = 2;

  @override
  Widget build(BuildContext context) {
    // print(DataRes[1].videos.url);
    var img = [
      'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg',
      'https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg',
      'https://images.pexels.com/photos/2486168/pexels-photo-2486168.jpeg',
      'https://images.pexels.com/photos/1366913/pexels-photo-1366913.jpeg',
      'https://images.pexels.com/photos/1591382/pexels-photo-1591382.jpeg',
      'https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg',
      'https://images.pexels.com/photos/695214/pexels-photo-695214.jpeg',
      'https://images.pexels.com/photos/53757/pexels-photo-53757.jpeg',
      'https://images.pexels.com/photos/2260800/pexels-photo-2260800.jpeg',
      'https://images.pexels.com/photos/1612461/pexels-photo-1612461.jpeg',
      'https://images.pexels.com/photos/2362002/pexels-photo-2362002.jpeg',
      'https://images.pexels.com/photos/462030/pexels-photo-462030.jpeg',
    ];

    return PageView.builder(
        itemCount: widget.DataRes.length,
        scrollDirection: Axis.vertical,
        onPageChanged: (int) {
          print('page changed $int');

          if (widget.DataRes.length - 5 < int) {
            var nextPage =
                'https://pixabay.com/api/videos/?key=28109076-e751a6f7bf9e3a446a73d31ac&q=flowers&pretty=true&page=${page}';
            var nextPageUri = Uri.parse(nextPage);

            api.get(nextPageUri).then((res) {
              Map Decoded = jsonDecode(res.body);

              List hitsMap = Decoded['hits'];

              List<hits> _data = hitsMap.map<hits>((item) {
                final convartedList = hits.jsonToDart(item);
                return convartedList;
              }).toList();

              widget.DataRes.addAll(_data);
              print(widget.DataRes.length);
              page++;
              setState(() {});
              print('page count $page total ${widget.DataRes.length}');
            });
          }
        },
        itemBuilder: ((context, index) {
          var item = widget.DataRes[index];
          String url = widget.DataRes[index].videos.url;

          return Container(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Expanded(child: Container(child: VideoApp(uri: url))
                    //
                    // CachedNetworkImage(
                    //   imageUrl: img[index],
                    //   fit: BoxFit.cover,
                    //   height: double.infinity,
                    // ),
                    ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: centerWidget(
                    data: item,
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
