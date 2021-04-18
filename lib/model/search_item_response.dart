
import 'dart:convert';

class SearchItemRespone {
    final bool hasErrors;
    final dynamic statusCode;
    final dynamic message;
    final List<Data> listData;

    SearchItemRespone({
        this.hasErrors,
        this.statusCode,
        this.message,
        this.listData,
    });

    factory SearchItemRespone.fromRawJson(String str) => SearchItemRespone.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SearchItemRespone.fromJson(Map<String, dynamic> json) => SearchItemRespone(
        hasErrors: json["hasErrors"] == null ? null : json["hasErrors"],
        statusCode: json["statusCode"],
        message: json["message"],
        listData: json["data"] == null ? null : List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "hasErrors": hasErrors == null ? null : hasErrors,
        "statusCode": statusCode,
        "message": message,
        "data": listData == null ? null : List<dynamic>.from(listData.map((x) => x.toJson())),
    };
}

class Data {
    final num itemId;
    final dynamic itemCode;
    final String itemName;
    final String itemNameEn;
    final String searchItemName;
    final dynamic fkVariantAid;
    final dynamic fkVariantBid;
    final num fkCategoryId;
    final dynamic fkVendorId;
    final num fkItemTypeId;
    final dynamic fkFixedAssetId;
    final num reorderQuantity;
    final num maxOrderQuantity;
    final num maxStockQuantity;
    final num allowedExcessRate;
    final num expiryDays;
    final num purchaseDiscount;
    final num purchaseDiscountRate;
    final num vendorDiscount;
    final num vendorDiscountRate;
    final dynamic cashDiscount;
    final dynamic cashDiscountRate;
    final dynamic deferralDiscount;
    final dynamic deferralDiscountRate;
    final dynamic returnDiscount;
    final dynamic returnDiscountRate;
    final dynamic monthlyDiscount;
    final dynamic monthlyDiscountRate;
    final dynamic quarterAnnualDiscount;
    final dynamic quarterAnnualDiscountRate;
    final dynamic annualDiscount;
    final dynamic annualDiscountRate;
    final dynamic extraDiscount;
    final dynamic extraDiscountRate;
    final dynamic additions;
    final dynamic additionsRate;
    final dynamic itemTax;
    final num itemTaxRate;
    final bool stopSale;
    final bool stopPurchase;
    final bool stopTransfer;
    final bool stopInventory;
    final bool isForResale;
    final bool isOpenSale;
    final bool isRecipe;
    final bool isActive;
    final bool showStockInClosure;
    final bool showSalesInClosure;
    final bool hasSerial;
    final dynamic notes;
    final dynamic purchaseNotes;
    final dynamic salesNotes;
    final dynamic qtyIncreaseBy;
    final dynamic maxOrderQty;
    final dynamic onHandQty;
    final dynamic mainImgUrl;
    final String insUserName;
    final DateTime insDate;
    final String updUserName;
    final DateTime updDate;
    final String recId;
    final dynamic fkCategory;
    final dynamic fkItemType;
    final dynamic fkVendor;
    final List<dynamic> itemBarCode;
    final List<dynamic> itemsPackages;
    final List<dynamic> cartProducts;

    Data({
        this.itemId,
        this.itemCode,
        this.itemName,
        this.itemNameEn,
        this.searchItemName,
        this.fkVariantAid,
        this.fkVariantBid,
        this.fkCategoryId,
        this.fkVendorId,
        this.fkItemTypeId,
        this.fkFixedAssetId,
        this.reorderQuantity,
        this.maxOrderQuantity,
        this.maxStockQuantity,
        this.allowedExcessRate,
        this.expiryDays,
        this.purchaseDiscount,
        this.purchaseDiscountRate,
        this.vendorDiscount,
        this.vendorDiscountRate,
        this.cashDiscount,
        this.cashDiscountRate,
        this.deferralDiscount,
        this.deferralDiscountRate,
        this.returnDiscount,
        this.returnDiscountRate,
        this.monthlyDiscount,
        this.monthlyDiscountRate,
        this.quarterAnnualDiscount,
        this.quarterAnnualDiscountRate,
        this.annualDiscount,
        this.annualDiscountRate,
        this.extraDiscount,
        this.extraDiscountRate,
        this.additions,
        this.additionsRate,
        this.itemTax,
        this.itemTaxRate,
        this.stopSale,
        this.stopPurchase,
        this.stopTransfer,
        this.stopInventory,
        this.isForResale,
        this.isOpenSale,
        this.isRecipe,
        this.isActive,
        this.showStockInClosure,
        this.showSalesInClosure,
        this.hasSerial,
        this.notes,
        this.purchaseNotes,
        this.salesNotes,
        this.qtyIncreaseBy,
        this.maxOrderQty,
        this.onHandQty,
        this.mainImgUrl,
        this.insUserName,
        this.insDate,
        this.updUserName,
        this.updDate,
        this.recId,
        this.fkCategory,
        this.fkItemType,
        this.fkVendor,
        this.itemBarCode,
        this.itemsPackages,
        this.cartProducts,
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        itemId: json["itemId"] == null ? null : json["itemId"],
        itemCode: json["itemCode"],
        itemName: json["itemName"] == null ? null : json["itemName"],
        itemNameEn: json["itemNameEn"] == null ? null : json["itemNameEn"],
        searchItemName: json["searchItemName"] == null ? null : json["searchItemName"],
        fkVariantAid: json["fkVariantAid"],
        fkVariantBid: json["fkVariantBid"],
        fkCategoryId: json["fkCategoryId"] == null ? null : json["fkCategoryId"],
        fkVendorId: json["fkVendorId"],
        fkItemTypeId: json["fkItemTypeId"] == null ? null : json["fkItemTypeId"],
        fkFixedAssetId: json["fkFixedAssetId"],
        reorderQuantity: json["reorderQuantity"] == null ? null : json["reorderQuantity"],
        maxOrderQuantity: json["maxOrderQuantity"] == null ? null : json["maxOrderQuantity"],
        maxStockQuantity: json["maxStockQuantity"] == null ? null : json["maxStockQuantity"],
        allowedExcessRate: json["allowedExcessRate"] == null ? null : json["allowedExcessRate"],
        expiryDays: json["expiryDays"] == null ? null : json["expiryDays"],
        purchaseDiscount: json["purchaseDiscount"] == null ? null : json["purchaseDiscount"],
        purchaseDiscountRate: json["purchaseDiscountRate"] == null ? null : json["purchaseDiscountRate"],
        vendorDiscount: json["vendorDiscount"] == null ? null : json["vendorDiscount"],
        vendorDiscountRate: json["vendorDiscountRate"] == null ? null : json["vendorDiscountRate"],
        cashDiscount: json["cashDiscount"],
        cashDiscountRate: json["cashDiscountRate"],
        deferralDiscount: json["deferralDiscount"],
        deferralDiscountRate: json["deferralDiscountRate"],
        returnDiscount: json["returnDiscount"],
        returnDiscountRate: json["returnDiscountRate"],
        monthlyDiscount: json["monthlyDiscount"],
        monthlyDiscountRate: json["monthlyDiscountRate"],
        quarterAnnualDiscount: json["quarterAnnualDiscount"],
        quarterAnnualDiscountRate: json["quarterAnnualDiscountRate"],
        annualDiscount: json["annualDiscount"],
        annualDiscountRate: json["annualDiscountRate"],
        extraDiscount: json["extraDiscount"],
        extraDiscountRate: json["extraDiscountRate"],
        additions: json["additions"],
        additionsRate: json["additionsRate"],
        itemTax: json["itemTax"],
        itemTaxRate: json["itemTaxRate"] == null ? null : json["itemTaxRate"],
        stopSale: json["stopSale"] == null ? null : json["stopSale"],
        stopPurchase: json["stopPurchase"] == null ? null : json["stopPurchase"],
        stopTransfer: json["stopTransfer"] == null ? null : json["stopTransfer"],
        stopInventory: json["stopInventory"] == null ? null : json["stopInventory"],
        isForResale: json["isForResale"] == null ? null : json["isForResale"],
        isOpenSale: json["isOpenSale"] == null ? null : json["isOpenSale"],
        isRecipe: json["isRecipe"] == null ? null : json["isRecipe"],
        isActive: json["isActive"] == null ? null : json["isActive"],
        showStockInClosure: json["showStockInClosure"] == null ? null : json["showStockInClosure"],
        showSalesInClosure: json["showSalesInClosure"] == null ? null : json["showSalesInClosure"],
        hasSerial: json["hasSerial"] == null ? null : json["hasSerial"],
        notes: json["notes"],
        purchaseNotes: json["purchaseNotes"],
        salesNotes: json["salesNotes"],
        qtyIncreaseBy: json["qtyIncreaseBy"],
        maxOrderQty: json["maxOrderQty"],
        onHandQty: json["onHandQty"],
        mainImgUrl: json["mainImgUrl"],
        insUserName: json["insUserName"] == null ? null : json["insUserName"],
        insDate: json["insDate"] == null ? null : DateTime.parse(json["insDate"]),
        updUserName: json["updUserName"] == null ? null : json["updUserName"],
        updDate: json["updDate"] == null ? null : DateTime.parse(json["updDate"]),
        recId: json["recId"] == null ? null : json["recId"],
        fkCategory: json["fkCategory"],
        fkItemType: json["fkItemType"],
        fkVendor: json["fkVendor"],
        itemBarCode: json["itemBarCode"] == null ? null : List<dynamic>.from(json["itemBarCode"].map((x) => x)),
        itemsPackages: json["itemsPackages"] == null ? null : List<dynamic>.from(json["itemsPackages"].map((x) => x)),
        cartProducts: json["cartProducts"] == null ? null : List<dynamic>.from(json["cartProducts"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "itemId": itemId == null ? null : itemId,
        "itemCode": itemCode,
        "itemName": itemName == null ? null : itemName,
        "itemNameEn": itemNameEn == null ? null : itemNameEn,
        "searchItemName": searchItemName == null ? null : searchItemName,
        "fkVariantAid": fkVariantAid,
        "fkVariantBid": fkVariantBid,
        "fkCategoryId": fkCategoryId == null ? null : fkCategoryId,
        "fkVendorId": fkVendorId,
        "fkItemTypeId": fkItemTypeId == null ? null : fkItemTypeId,
        "fkFixedAssetId": fkFixedAssetId,
        "reorderQuantity": reorderQuantity == null ? null : reorderQuantity,
        "maxOrderQuantity": maxOrderQuantity == null ? null : maxOrderQuantity,
        "maxStockQuantity": maxStockQuantity == null ? null : maxStockQuantity,
        "allowedExcessRate": allowedExcessRate == null ? null : allowedExcessRate,
        "expiryDays": expiryDays == null ? null : expiryDays,
        "purchaseDiscount": purchaseDiscount == null ? null : purchaseDiscount,
        "purchaseDiscountRate": purchaseDiscountRate == null ? null : purchaseDiscountRate,
        "vendorDiscount": vendorDiscount == null ? null : vendorDiscount,
        "vendorDiscountRate": vendorDiscountRate == null ? null : vendorDiscountRate,
        "cashDiscount": cashDiscount,
        "cashDiscountRate": cashDiscountRate,
        "deferralDiscount": deferralDiscount,
        "deferralDiscountRate": deferralDiscountRate,
        "returnDiscount": returnDiscount,
        "returnDiscountRate": returnDiscountRate,
        "monthlyDiscount": monthlyDiscount,
        "monthlyDiscountRate": monthlyDiscountRate,
        "quarterAnnualDiscount": quarterAnnualDiscount,
        "quarterAnnualDiscountRate": quarterAnnualDiscountRate,
        "annualDiscount": annualDiscount,
        "annualDiscountRate": annualDiscountRate,
        "extraDiscount": extraDiscount,
        "extraDiscountRate": extraDiscountRate,
        "additions": additions,
        "additionsRate": additionsRate,
        "itemTax": itemTax,
        "itemTaxRate": itemTaxRate == null ? null : itemTaxRate,
        "stopSale": stopSale == null ? null : stopSale,
        "stopPurchase": stopPurchase == null ? null : stopPurchase,
        "stopTransfer": stopTransfer == null ? null : stopTransfer,
        "stopInventory": stopInventory == null ? null : stopInventory,
        "isForResale": isForResale == null ? null : isForResale,
        "isOpenSale": isOpenSale == null ? null : isOpenSale,
        "isRecipe": isRecipe == null ? null : isRecipe,
        "isActive": isActive == null ? null : isActive,
        "showStockInClosure": showStockInClosure == null ? null : showStockInClosure,
        "showSalesInClosure": showSalesInClosure == null ? null : showSalesInClosure,
        "hasSerial": hasSerial == null ? null : hasSerial,
        "notes": notes,
        "purchaseNotes": purchaseNotes,
        "salesNotes": salesNotes,
        "qtyIncreaseBy": qtyIncreaseBy,
        "maxOrderQty": maxOrderQty,
        "onHandQty": onHandQty,
        "mainImgUrl": mainImgUrl,
        "insUserName": insUserName == null ? null : insUserName,
        "insDate": insDate == null ? null : insDate.toIso8601String(),
        "updUserName": updUserName == null ? null : updUserName,
        "updDate": updDate == null ? null : updDate.toIso8601String(),
        "recId": recId == null ? null : recId,
        "fkCategory": fkCategory,
        "fkItemType": fkItemType,
        "fkVendor": fkVendor,
        "itemBarCode": itemBarCode == null ? null : List<dynamic>.from(itemBarCode.map((x) => x)),
        "itemsPackages": itemsPackages == null ? null : List<dynamic>.from(itemsPackages.map((x) => x)),
        "cartProducts": cartProducts == null ? null : List<dynamic>.from(cartProducts.map((x) => x)),
    };
}
