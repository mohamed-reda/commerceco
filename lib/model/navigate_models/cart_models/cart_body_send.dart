//import '../../BaseModel.dart';
//
//class CartBodySend extends BaseModel {
//  int id;
//  int quantity;
//  int fkItemPackageId;
//  int fkTemId;
//  String insertDateTime;
//  int fkItemBarCodeID;
//  int fkDeliveryClientId;
//
//  CartBodySend(
//      {this.id,
//      this.quantity,
//      this.fkItemPackageId,
//      this.fkTemId,
//      this.insertDateTime,
//      this.fkItemBarCodeID,
//      this.fkDeliveryClientId});
////
//  CartBodySend.fromJson(Map<String, dynamic> json) {
//    id = json['id'];
//    quantity = json['quantity'];
//    fkItemPackageId = json['fkItemPackageId'];
//    fkTemId = json['fkTemId'];
//    insertDateTime = json['insertDateTime'];
//    fkItemBarCodeID = json['fk_itemBarCodeID'];
//    fkDeliveryClientId = json['fkDeliveryClientId'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['id'] = this.id;
//    data['quantity'] = this.quantity;
//    data['fkItemPackageId'] = this.fkItemPackageId;
//    data['fkTemId'] = this.fkTemId;
//    data['insertDateTime'] = this.insertDateTime;
//    data['fk_itemBarCodeID'] = this.fkItemBarCodeID;
//    data['fkDeliveryClientId'] = this.fkDeliveryClientId;
//    return data;
//  }
//
//  @override
//  BaseModel fromJson(Map<String, dynamic> json) {
//    return CartBodySend.fromJson(json);
//  }
//}
