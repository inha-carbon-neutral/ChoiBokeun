class ToDo {
  bool isDone = false;
  bool isImportant = false;
  String title = '';
  int id = 0;

  ToDo(
    this.title,
  );

  // ToDo 객체를 Json 으로 변환하는 메소드
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isDone': isDone,
      'isImportant': isImportant,
      'id': id,
    };
  }

  ToDo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        isDone = json['isDone'],
        isImportant = json['isImportant'],
        id = json['id'];
}
