import 'dart:convert';

class user {
  final userId;
  final id;
  final title;
  final completed;
  user({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  factory user.fromJson(Map<String, dynamic> json) {
    return user(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']);
  }
  Map toJson() {
    return {
      "userId": userId,
      "id": id,
      "title": title,
      "completed": completed,
    };
  }

  @override
  String toString() {
    return '{ userId: $userId, id: $id,title:$title,completed:$completed}';
  }
}

List userFromJson(String jsonData) {
  final data = json.decode(jsonData);
  //print(data);
  return List.from(data.map((item) => user.fromJson(item)));
}
//
// String userToJson(user data) {
//   final jsonData = data.toJson();
//   return json.encode(jsonData);
// }
