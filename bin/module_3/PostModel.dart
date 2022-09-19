
import 'dart:convert';

List<DataList> dataListFromJson(String str) => List<DataList>.from(json.decode(str).map((x) => DataList.fromJson(x)));

String dataListToJson(List<DataList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataList {
    DataList({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    final int userId;
    final int id;
    final String title;
    final String body;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        userId: json["userId"] ?? '',
        id: json["id"] ?? '',
        title: json["title"] ?? '',
        body: json["body"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
