// class that insure that all its children contain toJson, FromJson
abstract class BaseModel {
  BaseModel fromJson(Map<String, dynamic> json);
  BaseModel() ;
  Map<String, dynamic> toJson();
}
