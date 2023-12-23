import 'list_price.dart';
import 'retail_price.dart';

class Offer {
  num? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  bool? giftable;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
    this.giftable,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        finskyOfferType: num.tryParse(json['finskyOfferType'].toString()),
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(Map<String, dynamic>.from(json['listPrice'])),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(
                Map<String, dynamic>.from(json['retailPrice'])),
        giftable: json['giftable']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (finskyOfferType != null) 'finskyOfferType': finskyOfferType,
        if (listPrice != null) 'listPrice': listPrice?.toJson(),
        if (retailPrice != null) 'retailPrice': retailPrice?.toJson(),
        if (giftable != null) 'giftable': giftable,
      };
}
