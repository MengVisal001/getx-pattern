class MyModel {
  final int userId;
  final int id;
  final String title;
  final String body;
  MyModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
