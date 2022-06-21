class hits {
  final String pageURL, type, tags, pictureId, user, userImageURL;

  final int id, duration, likes, views, downloads, comments, userId;
  final video videos;

  hits(
      {required this.id,
      required this.pageURL,
      required this.type,
      required this.tags,
      required this.duration,
      required this.pictureId,
      required this.views,
      required this.downloads,
      required this.likes,
      required this.comments,
      required this.userId,
      required this.user,
      required this.userImageURL,
      required this.videos});

  factory hits.jsonToDart(Map json) {
    return hits(
        id: json['id'],
        pageURL: json['pageURL'],
        type: json['type'],
        tags: json['tags'],
        duration: json['duration'],
        pictureId: json['picture_id'],
        views: json['views'],
        downloads: json['downloads'],
        likes: json['likes'],
        comments: json['comments'],
        userId: json['user_id'],
        user: json['user'],
        userImageURL: json['userImageURL'],
        videos: video.jsonToDart(json['videos']));
  }
}

class video {
  final String url;
  final int width, height, size;

  video(
      {required this.url,
      required this.width,
      required this.height,
      required this.size});

  factory video.jsonToDart(Map json) {
    return video(
        url: json['small']['url'],
        width: json['small']['width'],
        height: json['small']['height'],
        size: json['small']['size']);
  }
}
