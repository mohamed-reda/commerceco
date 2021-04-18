//class CartModel {
//  List<_AllProducts> allProducts;
//  num total;
//  num subTotal;
//  num delivery;
//
//  CartModel({this.allProducts, this.total, this.subTotal, this.delivery});
//
//  CartModel.fromJson(Map<String, dynamic> json) {
//    if (json['allProducts'] != null) {
//      allProducts = new List<_AllProducts>();
//      json['allProducts'].forEach((v) {
//        allProducts.add(new _AllProducts.fromJson(v));
//      });
//    }
//    total = json['total'];
//    subTotal = json['subTotal'];
//    delivery = json['delivery'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    if (this.allProducts != null) {
//      data['allProducts'] = this.allProducts.map((v) => v.toJson()).toList();
//    }
//    data['total'] = this.total;
//    data['subTotal'] = this.subTotal;
//    data['delivery'] = this.delivery;
//    return data;
//  }
//}
//
//class _AllProducts {
//  num itemId;
//  num fkCategoryId;
//  num purchaseDiscount;
//  dynamic notes;
//  String itemName;
//  String itemCode;
//  num itemCost;
//  num customerPrice;
//  num packageId;
//  num itemPackageID;
//  String packageName;
//  String packageNameEn;
//  num packageSize;
//  num itemBarCodeID;
//  String barCode;
//  dynamic barCodeFormat;
//  num id;
//  num quantity;
//  dynamic fkItemPackageID;
//  num fkTemID;
//  String insertDateTime;
//  String insertDateTimeFormat;
//  dynamic fkItemBarCodeID;
//  num fkDeliveryClientId;
//
//  _AllProducts(
//      {this.itemId,
//        this.fkCategoryId,
//        this.purchaseDiscount,
//        this.notes,
//        this.itemName,
//        this.itemCode,
//        this.itemCost,
//        this.customerPrice,
//        this.packageId,
//        this.itemPackageID,
//        this.packageName,
//        this.packageNameEn,
//        this.packageSize,
//        this.itemBarCodeID,
//        this.barCode,
//        this.barCodeFormat,
//        this.id,
//        this.quantity,
//        this.fkItemPackageID,
//        this.fkTemID,
//        this.insertDateTime,
//        this.insertDateTimeFormat,
//        this.fkItemBarCodeID,
//        this.fkDeliveryClientId});
//
//  _AllProducts.fromJson(Map<String, dynamic> json) {
//    itemId = json['itemId'];
//    fkCategoryId = json['fkCategoryId'];
//    purchaseDiscount = json['purchaseDiscount'];
//    notes = json['notes'];
//    itemName = json['itemName'];
//    itemCode = json['itemCode'];
//    itemCost = json['itemCost'];
//    customerPrice = json['customerPrice'];
//    packageId = json['packageId'];
//    itemPackageID = json['itemPackageID'];
//    packageName = json['packageName'];
//    packageNameEn = json['packageNameEn'];
//    packageSize = json['packageSize'];
//    itemBarCodeID = json['itemBarCodeID'];
//    barCode = json['barCode'];
//    barCodeFormat = json['barCodeFormat'];
//    id = json['id'];
//    quantity = json['quantity'];
//    fkItemPackageID = json['fk_itemPackageID'];
//    fkTemID = json['fk_temID'];
//    insertDateTime = json['insertDateTime'];
//    insertDateTimeFormat = json['insertDateTimeFormat'];
//    fkItemBarCodeID = json['fk_itemBarCodeID'];
//    fkDeliveryClientId = json['fk_DeliveryClientId'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['itemId'] = this.itemId;
//    data['fkCategoryId'] = this.fkCategoryId;
//    data['purchaseDiscount'] = this.purchaseDiscount;
//    data['notes'] = this.notes;
//    data['itemName'] = this.itemName;
//    data['itemCode'] = this.itemCode;
//    data['itemCost'] = this.itemCost;
//    data['customerPrice'] = this.customerPrice;
//    data['packageId'] = this.packageId;
//    data['itemPackageID'] = this.itemPackageID;
//    data['packageName'] = this.packageName;
//    data['packageNameEn'] = this.packageNameEn;
//    data['packageSize'] = this.packageSize;
//    data['itemBarCodeID'] = this.itemBarCodeID;
//    data['barCode'] = this.barCode;
//    data['barCodeFormat'] = this.barCodeFormat;
//    data['id'] = this.id;
//    data['quantity'] = this.quantity;
//    data['fk_itemPackageID'] = this.fkItemPackageID;
//    data['fk_temID'] = this.fkTemID;
//    data['insertDateTime'] = this.insertDateTime;
//    data['insertDateTimeFormat'] = this.insertDateTimeFormat;
//    data['fk_itemBarCodeID'] = this.fkItemBarCodeID;
//    data['fk_DeliveryClientId'] = this.fkDeliveryClientId;
//    return data;
//  }
//}
