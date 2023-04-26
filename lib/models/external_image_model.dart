class ExternalImageModel {
  final int height;
  final String url;
  final int width;

  const ExternalImageModel({
    required this.height,
    required this.url,
    required this.width,
  });

  factory ExternalImageModel.fromJson(Map<String, dynamic> json) {
    return ExternalImageModel(
      height: json['height'],
      url: json['url'],
      width: json['width'],
    );
  }
}
