import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktok_home_ui/jsonConvaterModel/hits.dart';
import 'package:tiktok_home_ui/widget/centerWiget.dart';
import 'package:tiktok_home_ui/widget/video.dart';

class pageView extends StatelessWidget {
  pageView({Key? key, required this.DataRes}) : super(key: key);

  List<hits> DataRes;

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
        itemCount: DataRes.length,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          var item = DataRes[index];
          String url = DataRes[index].videos.url;

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
