
import 'dart:convert';

class OrderHistoryResponse {
  final bool hasErrors;
  final dynamic statusCode;
  final dynamic message;
  final List<Datum> data;

  OrderHistoryResponse({
    this.hasErrors,
    this.statusCode,
    this.message,
    this.data,
  });

  factory OrderHistoryResponse.fromRawJson(String str) => OrderHistoryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderHistoryResponse.fromJson(Map<String, dynamic> json) => OrderHistoryResponse(
    hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
    statusCode: json["statusCode"],
    message: json["message"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "hasErrors": hasErrors == null ? null : hasErrors,
    "statusCode": statusCode,
    "message": message,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  final num headerId;
  final num fkBrId;
  final num fkTransTypeId;
  final dynamic transNumber;
  final dynamic manualNo;
  final dynamic refNo;
  final dynamic transDate;
  final num clientId;
  final dynamic clientName;
  final dynamic fkClientTypeId;
  final dynamic salePriceType;
  final dynamic cashierId;
  final dynamic cashierName;
  final dynamic notes;
  final dynamic fkPaymentTypeId;
  final dynamic creditPeriod;
  final dynamic dueDate;
  final num fkInvoiceStatusId;
  final dynamic additionRate;
  final dynamic addition;
  final dynamic discountRate;
  final dynamic discount;
  final dynamic taxRate;
  final dynamic tax;
  final double total;
  final dynamic subTotal;
  final dynamic paid;
  final dynamic remain;
  final dynamic storeId;
  final dynamic storeName;
  final dynamic deliveryAmount;
  final dynamic salesRepId;
  final dynamic salesRepName;
  final dynamic insUserId;
  final dynamic insUserName;
  final DateTime insDate;
  final dynamic updUserId;
  final dynamic updDate;
  final dynamic recId;
  final dynamic fkPosCloseId;
  final dynamic orgheaderRef;
  final dynamic callerPhone;
  final dynamic fkDeliveryStatusId;
  final dynamic isPickupIn;
  final dynamic picupDate;
  final dynamic insDeliverySent;
  final dynamic insDeliveryClosed;
  final dynamic fkEmpId;
  final dynamic fkVisaMachineId;
  final dynamic fkVisaCardId;
  final dynamic visaCardInfo;
  final dynamic visaCardDeduct;
  final dynamic visaCardDeductAmount;
  final dynamic visaAmount;
  final List<PoscurrentDailyTransDetail> poscurrentDailyTransDetails;

  Datum({
    this.headerId,
    this.fkBrId,
    this.fkTransTypeId,
    this.transNumber,
    this.manualNo,
    this.refNo,
    this.transDate,
    this.clientId,
    this.clientName,
    this.fkClientTypeId,
    this.salePriceType,
    this.cashierId,
    this.cashierName,
    this.notes,
    this.fkPaymentTypeId,
    this.creditPeriod,
    this.dueDate,
    this.fkInvoiceStatusId,
    this.additionRate,
    this.addition,
    this.discountRate,
    this.discount,
    this.taxRate,
    this.tax,
    this.total,
    this.subTotal,
    this.paid,
    this.remain,
    this.storeId,
    this.storeName,
    this.deliveryAmount,
    this.salesRepId,
    this.salesRepName,
    this.insUserId,
    this.insUserName,
    this.insDate,
    this.updUserId,
    this.updDate,
    this.recId,
    this.fkPosCloseId,
    this.orgheaderRef,
    this.callerPhone,
    this.fkDeliveryStatusId,
    this.isPickupIn,
    this.picupDate,
    this.insDeliverySent,
    this.insDeliveryClosed,
    this.fkEmpId,
    this.fkVisaMachineId,
    this.fkVisaCardId,
    this.visaCardInfo,
    this.visaCardDeduct,
    this.visaCardDeductAmount,
    this.visaAmount,
    this.poscurrentDailyTransDetails,
  });

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    headerId: json["headerId"] == null ? null : json["headerId"],
    fkBrId: json["fkBrId"] == null ? null : json["fkBrId"],
    fkTransTypeId: json["fkTransTypeId"] == null ? null : json["fkTransTypeId"],
    transNumber: json["transNumber"],
    manualNo: json["manualNo"],
    refNo: json["refNo"],
    transDate: json["transDate"],
    clientId: json["clientId"] == null ? null : json["clientId"],
    clientName: json["clientName"],
    fkClientTypeId: json["fkClientTypeId"],
    salePriceType: json["salePriceType"],
    cashierId: json["cashierId"],
    cashierName: json["cashierName"],
    notes: json["notes"],
    fkPaymentTypeId: json["fkPaymentTypeId"],
    creditPeriod: json["creditPeriod"],
    dueDate: json["dueDate"],
    fkInvoiceStatusId: json["fkInvoiceStatusId"] == null ? null : json["fkInvoiceStatusId"],
    additionRate: json["additionRate"],
    addition: json["addition"],
    discountRate: json["discountRate"],
    discount: json["discount"],
    taxRate: json["taxRate"],
    tax: json["tax"],
    total: json["total"] == null ? null : json["total"].toDouble(),
    subTotal: json["subTotal"],
    paid: json["paid"],
    remain: json["remain"],
    storeId: json["storeId"],
    storeName: json["storeName"],
    deliveryAmount: json["deliveryAmount"],
    salesRepId: json["salesRepId"],
    salesRepName: json["salesRepName"],
    insUserId: json["insUserId"],
    insUserName: json["insUserName"],
    insDate: json["insDate"] == null ? null : DateTime.parse(json["insDate"]),
    updUserId: json["updUserId"],
    updDate: json["updDate"],
    recId: json["recId"],
    fkPosCloseId: json["fkPosCloseId"],
    orgheaderRef: json["orgheaderRef"],
    callerPhone: json["callerPhone"],
    fkDeliveryStatusId: json["fkDeliveryStatusId"],
    isPickupIn: json["isPickupIn"],
    picupDate: json["picupDate"],
    insDeliverySent: json["insDeliverySent"],
    insDeliveryClosed: json["insDeliveryClosed"],
    fkEmpId: json["fkEmpId"],
    fkVisaMachineId: json["fkVisaMachineId"],
    fkVisaCardId: json["fkVisaCardId"],
    visaCardInfo: json["visaCardInfo"],
    visaCardDeduct: json["visaCardDeduct"],
    visaCardDeductAmount: json["visaCardDeductAmount"],
    visaAmount: json["visaAmount"],
    poscurrentDailyTransDetails: json["poscurrentDailyTransDetails"] == null ? null : List<PoscurrentDailyTransDetail>.from(json["poscurrentDailyTransDetails"].map((x) => PoscurrentDailyTransDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "headerId": headerId == null ? null : headerId,
    "fkBrId": fkBrId == null ? null : fkBrId,
    "fkTransTypeId": fkTransTypeId == null ? null : fkTransTypeId,
    "transNumber": transNumber,
    "manualNo": manualNo,
    "refNo": refNo,
    "transDate": transDate,
    "clientId": clientId == null ? null : clientId,
    "clientName": clientName,
    "fkClientTypeId": fkClientTypeId,
    "salePriceType": salePriceType,
    "cashierId": cashierId,
    "cashierName": cashierName,
    "notes": notes,
    "fkPaymentTypeId": fkPaymentTypeId,
    "creditPeriod": creditPeriod,
    "dueDate": dueDate,
    "fkInvoiceStatusId": fkInvoiceStatusId == null ? null : fkInvoiceStatusId,
    "additionRate": additionRate,
    "addition": addition,
    "discountRate": discountRate,
    "discount": discount,
    "taxRate": taxRate,
    "tax": tax,
    "total": total == null ? null : total,
    "subTotal": subTotal,
    "paid": paid,
    "remain": remain,
    "storeId": storeId,
    "storeName": storeName,
    "deliveryAmount": deliveryAmount,
    "salesRepId": salesRepId,
    "salesRepName": salesRepName,
    "insUserId": insUserId,
    "insUserName": insUserName,
    "insDate": insDate == null ? null : insDate.toIso8601String(),
    "updUserId": updUserId,
    "updDate": updDate,
    "recId": recId,
    "fkPosCloseId": fkPosCloseId,
    "orgheaderRef": orgheaderRef,
    "callerPhone": callerPhone,
    "fkDeliveryStatusId": fkDeliveryStatusId,
    "isPickupIn": isPickupIn,
    "picupDate": picupDate,
    "insDeliverySent": insDeliverySent,
    "insDeliveryClosed": insDeliveryClosed,
    "fkEmpId": fkEmpId,
    "fkVisaMachineId": fkVisaMachineId,
    "fkVisaCardId": fkVisaCardId,
    "visaCardInfo": visaCardInfo,
    "visaCardDeduct": visaCardDeduct,
    "visaCardDeductAmount": visaCardDeductAmount,
    "visaAmount": visaAmount,
    "poscurrentDailyTransDetails": poscurrentDailyTransDetails == null ? null : List<dynamic>.from(poscurrentDailyTransDetails.map((x) => x.toJson())),
  };
}

class PoscurrentDailyTransDetail {
  final num detailId;
  final num fkBrId;
  final num headerId;
  final num fktransTypeId;
  final dynamic barcodeDescription;
  final String barcode;
  final num fkItemBarcodeId;
  final num itemId;
  final String itemName;
  final num packageId;
  final String packageName;
  final num qtyPerPackage;
  final num qty;
  final num returnedQty;
  final dynamic vendDiscount;
  final dynamic vendDiscountRate;
  final dynamic taxRate;
  final num total;
  final dynamic notes;
  final num affectedPieces;
  final double custPrice;
  final num insUserId;
  final DateTime insDate;
  final String transDate;
  final dynamic discPromo;
  final dynamic discSeason;
  final dynamic discMember;
  final dynamic discHeader;
  final num itemCost;
  final num fkStoreId;
  final dynamic fkParentItemId;
  final dynamic wholeSalePrice;
  final dynamic halfWholeSalePrice;
  final dynamic purchasePrice;
  final double salePrice;
  final dynamic poscurrentDailyTransHeader;

  PoscurrentDailyTransDetail({
    this.detailId,
    this.fkBrId,
    this.headerId,
    this.fktransTypeId,
    this.barcodeDescription,
    this.barcode,
    this.fkItemBarcodeId,
    this.itemId,
    this.itemName,
    this.packageId,
    this.packageName,
    this.qtyPerPackage,
    this.qty,
    this.returnedQty,
    this.vendDiscount,
    this.vendDiscountRate,
    this.taxRate,
    this.total,
    this.notes,
    this.affectedPieces,
    this.custPrice,
    this.insUserId,
    this.insDate,
    this.transDate,
    this.discPromo,
    this.discSeason,
    this.discMember,
    this.discHeader,
    this.itemCost,
    this.fkStoreId,
    this.fkParentItemId,
    this.wholeSalePrice,
    this.halfWholeSalePrice,
    this.purchasePrice,
    this.salePrice,
    this.poscurrentDailyTransHeader,
  });

  factory PoscurrentDailyTransDetail.fromRawJson(String str) => PoscurrentDailyTransDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PoscurrentDailyTransDetail.fromJson(Map<String, dynamic> json) => PoscurrentDailyTransDetail(
    detailId: json["detailId"] == null ? null : json["detailId"],
    fkBrId: json["fkBrId"] == null ? null : json["fkBrId"],
    headerId: json["headerId"] == null ? null : json["headerId"],
    fktransTypeId: json["fktransTypeId"] == null ? null : json["fktransTypeId"],
    barcodeDescription: json["barcodeDescription"],
    barcode: json["barcode"] == null ? null : json["barcode"],
    fkItemBarcodeId: json["fkItemBarcodeId"] == null ? null : json["fkItemBarcodeId"],
    itemId: json["itemId"] == null ? null : json["itemId"],
    itemName: json["itemName"] == null ? null : json["itemName"],
    packageId: json["packageId"] == null ? null : json["packageId"],
    packageName: json["packageName"] == null ? null : json["packageName"],
    qtyPerPackage: json["qtyPerPackage"] == null ? null : json["qtyPerPackage"],
    qty: json["qty"] == null ? null : json["qty"],
    returnedQty: json["returnedQty"] == null ? null : json["returnedQty"],
    vendDiscount: json["vendDiscount"],
    vendDiscountRate: json["vendDiscountRate"],
    taxRate: json["taxRate"],
    total: json["total"] == null ? null : json["total"],
    notes: json["notes"],
    affectedPieces: json["affectedPieces"] == null ? null : json["affectedPieces"],
    custPrice: json["custPrice"] == null ? null : json["custPrice"].toDouble(),
    insUserId: json["insUserId"] == null ? null : json["insUserId"],
    insDate: json["insDate"] == null ? null : DateTime.parse(json["insDate"]),
    transDate: json["transDate"] == null ? null : json["transDate"],
    discPromo: json["discPromo"],
    discSeason: json["discSeason"],
    discMember: json["discMember"],
    discHeader: json["discHeader"],
    itemCost: json["itemCost"] == null ? null : json["itemCost"],
    fkStoreId: json["fkStoreId"] == null ? null : json["fkStoreId"],
    fkParentItemId: json["fkParentItemId"],
    wholeSalePrice: json["wholeSalePrice"],
    halfWholeSalePrice: json["halfWholeSalePrice"],
    purchasePrice: json["purchasePrice"],
    salePrice: json["salePrice"] == null ? null : json["salePrice"].toDouble(),
    poscurrentDailyTransHeader: json["poscurrentDailyTransHeader"],
  );

  Map<String, dynamic> toJson() => {
    "detailId": detailId == null ? null : detailId,
    "fkBrId": fkBrId == null ? null : fkBrId,
    "headerId": headerId == null ? null : headerId,
    "fktransTypeId": fktransTypeId == null ? null : fktransTypeId,
    "barcodeDescription": barcodeDescription,
    "barcode": barcode == null ? null : barcode,
    "fkItemBarcodeId": fkItemBarcodeId == null ? null : fkItemBarcodeId,
    "itemId": itemId == null ? null : itemId,
    "itemName": itemName == null ? null : itemName,
    "packageId": packageId == null ? null : packageId,
    "packageName": packageName == null ? null : packageName,
    "qtyPerPackage": qtyPerPackage == null ? null : qtyPerPackage,
    "qty": qty == null ? null : qty,
    "returnedQty": returnedQty == null ? null : returnedQty,
    "vendDiscount": vendDiscount,
    "vendDiscountRate": vendDiscountRate,
    "taxRate": taxRate,
    "total": total == null ? null : total,
    "notes": notes,
    "affectedPieces": affectedPieces == null ? null : affectedPieces,
    "custPrice": custPrice == null ? null : custPrice,
    "insUserId": insUserId == null ? null : insUserId,
    "insDate": insDate == null ? null : insDate.toIso8601String(),
    "transDate": transDate == null ? null : transDate,
    "discPromo": discPromo,
    "discSeason": discSeason,
    "discMember": discMember,
    "discHeader": discHeader,
    "itemCost": itemCost == null ? null : itemCost,
    "fkStoreId": fkStoreId == null ? null : fkStoreId,
    "fkParentItemId": fkParentItemId,
    "wholeSalePrice": wholeSalePrice,
    "halfWholeSalePrice": halfWholeSalePrice,
    "purchasePrice": purchasePrice,
    "salePrice": salePrice == null ? null : salePrice,
    "poscurrentDailyTransHeader": poscurrentDailyTransHeader,
  };
}
