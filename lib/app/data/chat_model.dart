class Chat {
  int? id;
  String? username;
  String? name;
  String? message;
  String? time;

  Chat({this.id, this.username, this.name, this.message, this.time});

  Chat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    message = json['message'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['name'] = name;
    data['message'] = message;
    data['time'] = time;
    return data;
  }
}
