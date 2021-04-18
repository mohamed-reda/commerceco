//import '../../BaseModel.dart';
//
//class FavouriteBodySend extends BaseModel{
//  int fkItemId;
//  int fkItemPackageId;
//  int fkDeliveryClientId;
//
//  FavouriteBodySend(
//      {this.fkItemId, this.fkItemPackageId, this.fkDeliveryClientId});
//
//  FavouriteBodySend.fromJson(Map<String, dynamic> json) {
//    fkItemId = json['fkItemId'];
//    fkItemPackageId = json['fkItemPackageId'];
//    fkDeliveryClientId = json['fkDeliveryClientId'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['fkItemId'] = this.fkItemId;
//    data['fkItemPackageId'] = this.fkItemPackageId;
//    data['fkDeliveryClientId'] = this.fkDeliveryClientId;
//    return data;
//  }
//
//  @override
//  BaseModel fromJson(Map<String, dynamic> json) {
//    return FavouriteBodySend.fromJson(json);
//  }
//}
