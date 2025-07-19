class ArticaleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String wepView;
  ArticaleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.wepView,
  });

  factory ArticaleModel.Fromjson(json) {
    return ArticaleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      wepView: json['url'],
    );
  }
}
