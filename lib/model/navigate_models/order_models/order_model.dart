//class OrderResponseModel {
//  dynamic headerId;
//  dynamic fkBrId;
//  dynamic fkTransTypeId;
//  dynamic transNumber;
//  dynamic manualNo;
//  dynamic refNo;
//  dynamic transDate;
//  dynamic clientId;
//  dynamic clientName;
//  dynamic fkClientTypeId;
//  dynamic salePriceType;
//  dynamic cashierId;
//  dynamic cashierName;
//  dynamic notes;
//  dynamic fkPaymentTypeId;
//  dynamic creditPeriod;
//  dynamic dueDate;
//  dynamic fkInvoiceStatusId;
//  dynamic additionRate;
//  dynamic addition;
//  dynamic discountRate;
//  dynamic discount;
//  dynamic taxRate;
//  dynamic tax;
//  dynamic total;
//  dynamic subTotal;
//  dynamic paid;
//  dynamic remain;
//  dynamic storeId;
//  dynamic storeName;
//  dynamic deliveryAmount;
//  dynamic salesRepId;
//  dynamic salesRepName;
//  dynamic insUserId;
//  dynamic insUserName;
//  dynamic insDate;
//  dynamic updUserId;
//  dynamic updDate;
//  dynamic recId;
//  dynamic fkPosCloseId;
//  dynamic orgheaderRef;
//  dynamic callerPhone;
//  dynamic fkDeliveryStatusId;
//  dynamic isPickupIn;
//  dynamic picupDate;
//  dynamic insDeliverySent;
//  dynamic insDeliveryClosed;
//  dynamic fkEmpId;
//  dynamic fkVisaMachineId;
//  dynamic fkVisaCardId;
//  dynamic visaCardInfo;
//  dynamic visaCardDeduct;
//  dynamic visaCardDeductAmount;
//  dynamic visaAmount;
//  List<_PoscurrentDailyTransDetails> poscurrentDailyTransDetails;
//
//  OrderResponseModel(
//      {this.headerId,
//        this.fkBrId,
//        this.fkTransTypeId,
//        this.transNumber,
//        this.manualNo,
//        this.refNo,
//        this.transDate,
//        this.clientId,
//        this.clientName,
//        this.fkClientTypeId,
//        this.salePriceType,
//        this.cashierId,
//        this.cashierName,
//        this.notes,
//        this.fkPaymentTypeId,
//        this.creditPeriod,
//        this.dueDate,
//        this.fkInvoiceStatusId,
//        this.additionRate,
//        this.addition,
//        this.discountRate,
//        this.discount,
//        this.taxRate,
//        this.tax,
//        this.total,
//        this.subTotal,
//        this.paid,
//        this.remain,
//        this.storeId,
//        this.storeName,
//        this.deliveryAmount,
//        this.salesRepId,
//        this.salesRepName,
//        this.insUserId,
//        this.insUserName,
//        this.insDate,
//        this.updUserId,
//        this.updDate,
//        this.recId,
//        this.fkPosCloseId,
//        this.orgheaderRef,
//        this.callerPhone,
//        this.fkDeliveryStatusId,
//        this.isPickupIn,
//        this.picupDate,
//        this.insDeliverySent,
//        this.insDeliveryClosed,
//        this.fkEmpId,
//        this.fkVisaMachineId,
//        this.fkVisaCardId,
//        this.visaCardInfo,
//        this.visaCardDeduct,
//        this.visaCardDeductAmount,
//        this.visaAmount,
//        this.poscurrentDailyTransDetails});
//
//  OrderResponseModel.fromJson(Map<String, dynamic> json) {
//    headerId = json['headerId'];
//    fkBrId = json['fkBrId'];
//    fkTransTypeId = json['fkTransTypeId'];
//    transNumber = json['transNumber'];
//    manualNo = json['manualNo'];
//    refNo = json['refNo'];
//    transDate = json['transDate'];
//    clientId = json['clientId'];
//    clientName = json['clientName'];
//    fkClientTypeId = json['fkClientTypeId'];
//    salePriceType = json['salePriceType'];
//    cashierId = json['cashierId'];
//    cashierName = json['cashierName'];
//    notes = json['notes'];
//    fkPaymentTypeId = json['fkPaymentTypeId'];
//    creditPeriod = json['creditPeriod'];
//    dueDate = json['dueDate'];
//    fkInvoiceStatusId = json['fkInvoiceStatusId'];
//    additionRate = json['additionRate'];
//    addition = json['addition'];
//    discountRate = json['discountRate'];
//    discount = json['discount'];
//    taxRate = json['taxRate'];
//    tax = json['tax'];
//    total = json['total'];
//    subTotal = json['subTotal'];
//    paid = json['paid'];
//    remain = json['remain'];
//    storeId = json['storeId'];
//    storeName = json['storeName'];
//    deliveryAmount = json['deliveryAmount'];
//    salesRepId = json['salesRepId'];
//    salesRepName = json['salesRepName'];
//    insUserId = json['insUserId'];
//    insUserName = json['insUserName'];
//    insDate = json['insDate'];
//    updUserId = json['updUserId'];
//    updDate = json['updDate'];
//    recId = json['recId'];
//    fkPosCloseId = json['fkPosCloseId'];
//    orgheaderRef = json['orgheaderRef'];
//    callerPhone = json['callerPhone'];
//    fkDeliveryStatusId = json['fkDeliveryStatusId'];
//    isPickupIn = json['isPickupIn'];
//    picupDate = json['picupDate'];
//    insDeliverySent = json['insDeliverySent'];
//    insDeliveryClosed = json['insDeliveryClosed'];
//    fkEmpId = json['fkEmpId'];
//    fkVisaMachineId = json['fkVisaMachineId'];
//    fkVisaCardId = json['fkVisaCardId'];
//    visaCardInfo = json['visaCardInfo'];
//    visaCardDeduct = json['visaCardDeduct'];
//    visaCardDeductAmount = json['visaCardDeductAmount'];
//    visaAmount = json['visaAmount'];
//    if (json['poscurrentDailyTransDetails'] != dynamic) {
//      poscurrentDailyTransDetails = new List<_PoscurrentDailyTransDetails>();
//      json['poscurrentDailyTransDetails'].forEach((v) {
//        poscurrentDailyTransDetails
//            .add(new _PoscurrentDailyTransDetails.fromJson(v));
//      });
//    }
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['headerId'] = this.headerId;
//    data['fkBrId'] = this.fkBrId;
//    data['fkTransTypeId'] = this.fkTransTypeId;
//    data['transNumber'] = this.transNumber;
//    data['manualNo'] = this.manualNo;
//    data['refNo'] = this.refNo;
//    data['transDate'] = this.transDate;
//    data['clientId'] = this.clientId;
//    data['clientName'] = this.clientName;
//    data['fkClientTypeId'] = this.fkClientTypeId;
//    data['salePriceType'] = this.salePriceType;
//    data['cashierId'] = this.cashierId;
//    data['cashierName'] = this.cashierName;
//    data['notes'] = this.notes;
//    data['fkPaymentTypeId'] = this.fkPaymentTypeId;
//    data['creditPeriod'] = this.creditPeriod;
//    data['dueDate'] = this.dueDate;
//    data['fkInvoiceStatusId'] = this.fkInvoiceStatusId;
//    data['additionRate'] = this.additionRate;
//    data['addition'] = this.addition;
//    data['discountRate'] = this.discountRate;
//    data['discount'] = this.discount;
//    data['taxRate'] = this.taxRate;
//    data['tax'] = this.tax;
//    data['total'] = this.total;
//    data['subTotal'] = this.subTotal;
//    data['paid'] = this.paid;
//    data['remain'] = this.remain;
//    data['storeId'] = this.storeId;
//    data['storeName'] = this.storeName;
//    data['deliveryAmount'] = this.deliveryAmount;
//    data['salesRepId'] = this.salesRepId;
//    data['salesRepName'] = this.salesRepName;
//    data['insUserId'] = this.insUserId;
//    data['insUserName'] = this.insUserName;
//    data['insDate'] = this.insDate;
//    data['updUserId'] = this.updUserId;
//    data['updDate'] = this.updDate;
//    data['recId'] = this.recId;
//    data['fkPosCloseId'] = this.fkPosCloseId;
//    data['orgheaderRef'] = this.orgheaderRef;
//    data['callerPhone'] = this.callerPhone;
//    data['fkDeliveryStatusId'] = this.fkDeliveryStatusId;
//    data['isPickupIn'] = this.isPickupIn;
//    data['picupDate'] = this.picupDate;
//    data['insDeliverySent'] = this.insDeliverySent;
//    data['insDeliveryClosed'] = this.insDeliveryClosed;
//    data['fkEmpId'] = this.fkEmpId;
//    data['fkVisaMachineId'] = this.fkVisaMachineId;
//    data['fkVisaCardId'] = this.fkVisaCardId;
//    data['visaCardInfo'] = this.visaCardInfo;
//    data['visaCardDeduct'] = this.visaCardDeduct;
//    data['visaCardDeductAmount'] = this.visaCardDeductAmount;
//    data['visaAmount'] = this.visaAmount;
//    if (this.poscurrentDailyTransDetails != dynamic) {
//      data['poscurrentDailyTransDetails'] =
//          this.poscurrentDailyTransDetails.map((v) => v.toJson()).toList();
//    }
//    return data;
//  }
//}
//
//class _PoscurrentDailyTransDetails {
//  dynamic detailId;
//  dynamic fkBrId;
//  dynamic headerId;
//  dynamic fktransTypeId;
//  dynamic barcodeDescription;
//  String barcode;
//  dynamic fkItemBarcodeId;
//  dynamic itemId;
//  String itemName;
//  dynamic packageId;
//  String packageName;
//  dynamic qtyPerPackage;
//  dynamic qty;
//  dynamic returnedQty;
//  dynamic vendDiscount;
//  dynamic vendDiscountRate;
//  dynamic taxRate;
//  dynamic total;
//  dynamic notes;
//  dynamic affectedPieces;
//  dynamic custPrice;
//  dynamic insUserId;
//  String insDate;
//  String transDate;
//  dynamic discPromo;
//  dynamic discSeason;
//  dynamic discMember;
//  dynamic discHeader;
//  dynamic itemCost;
//  dynamic fkStoreId;
//  dynamic fkParentItemId;
//  dynamic wholeSalePrice;
//  dynamic halfWholeSalePrice;
//  dynamic purchasePrice;
//  dynamic salePrice;
//  dynamic poscurrentDailyTransHeader;
//
//  _PoscurrentDailyTransDetails(
//      {this.detailId,
//        this.fkBrId,
//        this.headerId,
//        this.fktransTypeId,
//        this.barcodeDescription,
//        this.barcode,
//        this.fkItemBarcodeId,
//        this.itemId,
//        this.itemName,
//        this.packageId,
//        this.packageName,
//        this.qtyPerPackage,
//        this.qty,
//        this.returnedQty,
//        this.vendDiscount,
//        this.vendDiscountRate,
//        this.taxRate,
//        this.total,
//        this.notes,
//        this.affectedPieces,
//        this.custPrice,
//        this.insUserId,
//        this.insDate,
//        this.transDate,
//        this.discPromo,
//        this.discSeason,
//        this.discMember,
//        this.discHeader,
//        this.itemCost,
//        this.fkStoreId,
//        this.fkParentItemId,
//        this.wholeSalePrice,
//        this.halfWholeSalePrice,
//        this.purchasePrice,
//        this.salePrice,
//        this.poscurrentDailyTransHeader});
//
//  _PoscurrentDailyTransDetails.fromJson(Map<String, dynamic> json) {
//    detailId = json['detailId'];
//    fkBrId = json['fkBrId'];
//    headerId = json['headerId'];
//    fktransTypeId = json['fktransTypeId'];
//    barcodeDescription = json['barcodeDescription'];
//    barcode = json['barcode'];
//    fkItemBarcodeId = json['fkItemBarcodeId'];
//    itemId = json['itemId'];
//    itemName = json['itemName'];
//    packageId = json['packageId'];
//    packageName = json['packageName'];
//    qtyPerPackage = json['qtyPerPackage'];
//    qty = json['qty'];
//    returnedQty = json['returnedQty'];
//    vendDiscount = json['vendDiscount'];
//    vendDiscountRate = json['vendDiscountRate'];
//    taxRate = json['taxRate'];
//    total = json['total'];
//    notes = json['notes'];
//    affectedPieces = json['affectedPieces'];
//    custPrice = json['custPrice'];
//    insUserId = json['insUserId'];
//    insDate = json['insDate'];
//    transDate = json['transDate'];
//    discPromo = json['discPromo'];
//    discSeason = json['discSeason'];
//    discMember = json['discMember'];
//    discHeader = json['discHeader'];
//    itemCost = json['itemCost'];
//    fkStoreId = json['fkStoreId'];
//    fkParentItemId = json['fkParentItemId'];
//    wholeSalePrice = json['wholeSalePrice'];
//    halfWholeSalePrice = json['halfWholeSalePrice'];
//    purchasePrice = json['purchasePrice'];
//    salePrice = json['salePrice'];
//    poscurrentDailyTransHeader = json['poscurrentDailyTransHeader'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['detailId'] = this.detailId;
//    data['fkBrId'] = this.fkBrId;
//    data['headerId'] = this.headerId;
//    data['fktransTypeId'] = this.fktransTypeId;
//    data['barcodeDescription'] = this.barcodeDescription;
//    data['barcode'] = this.barcode;
//    data['fkItemBarcodeId'] = this.fkItemBarcodeId;
//    data['itemId'] = this.itemId;
//    data['itemName'] = this.itemName;
//    data['packageId'] = this.packageId;
//    data['packageName'] = this.packageName;
//    data['qtyPerPackage'] = this.qtyPerPackage;
//    data['qty'] = this.qty;
//    data['returnedQty'] = this.returnedQty;
//    data['vendDiscount'] = this.vendDiscount;
//    data['vendDiscountRate'] = this.vendDiscountRate;
//    data['taxRate'] = this.taxRate;
//    data['total'] = this.total;
//    data['notes'] = this.notes;
//    data['affectedPieces'] = this.affectedPieces;
//    data['custPrice'] = this.custPrice;
//    data['insUserId'] = this.insUserId;
//    data['insDate'] = this.insDate;
//    data['transDate'] = this.transDate;
//    data['discPromo'] = this.discPromo;
//    data['discSeason'] = this.discSeason;
//    data['discMember'] = this.discMember;
//    data['discHeader'] = this.discHeader;
//    data['itemCost'] = this.itemCost;
//    data['fkStoreId'] = this.fkStoreId;
//    data['fkParentItemId'] = this.fkParentItemId;
//    data['wholeSalePrice'] = this.wholeSalePrice;
//    data['halfWholeSalePrice'] = this.halfWholeSalePrice;
//    data['purchasePrice'] = this.purchasePrice;
//    data['salePrice'] = this.salePrice;
//    data['poscurrentDailyTransHeader'] = this.poscurrentDailyTransHeader;
//    return data;
//  }
//}
