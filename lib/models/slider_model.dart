class SliderModel {
  late final int mainCode;
  late final int code;
  late final List<Data> data;

  SliderModel.fromJson(Map<String, dynamic> json) {
    mainCode = json['mainCode'];
    code = json['code'];
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  late final int id;
  late final String link;
  late final String image;
  late final int status;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    image = json['image'];
    status = json['status'];
  }
}