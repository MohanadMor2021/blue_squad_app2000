class AllProduct {
  bool? status;
  int? code;
  String? message;
  List<Products>? products;

  AllProduct({this.status, this.code, this.message, this.products});

  AllProduct.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }


}

class Products {
  int? id;
  String? name;
  int? quantity;
  String? image;
  String? description;
  String? origin;
  String? usage;
  NaturalInfo? naturalInfo;

  Products(
      {this.id,
        this.name,
        this.quantity,
        this.image,
        this.description,
        this.origin,
        this.usage,
        this.naturalInfo});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    quantity = json['quantity'];
    image = json['image'];
    description = json['description'];
    origin = json['origin'];
    usage = json['usage'];
    naturalInfo = json['natural_info'] != null
        ? new NaturalInfo.fromJson(json['natural_info'])
        : null;
  }


}

class NaturalInfo {
  String? size;
  String? calories;
  String? protien;
  String? sugar;
  String? fibre;
  String? fat;
  String? saturatedFat;
  String? vitaminA;
  String? vitaminC;

  NaturalInfo(
      {this.size,
        this.calories,
        this.protien,
        this.sugar,
        this.fibre,
        this.fat,
        this.saturatedFat,
        this.vitaminA,
        this.vitaminC});

  NaturalInfo.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    calories = json['calories'];
    protien = json['protien'];
    sugar = json['sugar'];
    fibre = json['fibre'];
    fat = json['fat'];
    saturatedFat = json['saturated fat'];
    vitaminA = json['vitaminA'];
    vitaminC = json['vitaminC'];
  }


}
