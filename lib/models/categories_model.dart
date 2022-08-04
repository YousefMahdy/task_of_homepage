
class CategoriesModel {
  int? mainCode;
  int? code;
  List<Data>? data;

  CategoriesModel.fromJson(Map<String, dynamic> json) {
   mainCode = json["mainCode"];
   code = json["code"];
   data = json["data"]==null ? null : (json["data"] as List).map((e)=>Data.fromJson(e)).toList();

  }

}

class Data {
  int? id;
  String? name;
  String? image;
  int? haveStores;
  String? createdAt;

  Data.fromJson(Map<String, dynamic> json) {
   id = json["id"];
   name = json["name"];
   image = json["image"];
   haveStores = json["haveStores"];
   createdAt = json["created_at"];
  }


}