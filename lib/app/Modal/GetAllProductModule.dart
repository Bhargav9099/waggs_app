import 'CartProductModel.dart';

class GetAllproduct {
  int? responseCode;
  String? message;
  Data? data;

  GetAllproduct({this.responseCode, this.message, this.data});

  GetAllproduct.fromJson(Map<String, dynamic> json) {
    responseCode = json['responseCode'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responseCode'] = this.responseCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? totalCount;
  List<Products>? products;

  Data({this.totalCount, this.products});

  Data.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? sId;
  String? unit;
  num? rating;
  int? ratedBy;
  List<String>? images;
  SellerId? sellerId;
  String? title;
  String? description;
  Category? category;
  SubCategory? subCategory;
  double? weight;
  int? stock;
  int? price;
  int? discountedPrice;
  String? lifeStage;
  String? brand;
  String? productType;
  String? flavor;
  String? breedSize;
  String? vegNonveg;
  double? discount;
  String? color;
  Null? materialUsed;

  Products(
      {this.sId,
      this.unit,
      this.rating,
      this.ratedBy,
      this.images,
      this.sellerId,
      this.title,
      this.description,
      this.category,
      this.subCategory,
      this.weight,
      this.stock,
      this.price,
      this.discountedPrice,
      this.lifeStage,
      this.brand,
      this.productType,
      this.flavor,
      this.breedSize,
      this.vegNonveg,
      this.discount,
      this.color,
      this.materialUsed});

  Products.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    unit = json['unit'];
    rating = json['rating'];
    ratedBy = json['ratedBy'];
    images = json['images'].cast<String>();
    sellerId = json['sellerId'] != null
        ? new SellerId.fromJson(json['sellerId'])
        : null;
    title = json['title'];
    description = json['description'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    subCategory = json['subCategory'] != null
        ? new SubCategory.fromJson(json['subCategory'])
        : null;
    weight = (json['weight'].runtimeType == int)
        ? double.parse(json['weight'].toString())
        : json['weight'];
    stock = json['stock'];
    price = json['price'];
    discountedPrice = json['discountedPrice'];
    lifeStage = json['life_stage'];
    brand = json['brand'];
    productType = json['product_type'];
    flavor = json['flavor'];
    breedSize = json['breed_size'];
    vegNonveg = json['veg_nonveg'];
    discount = (json['discount'].runtimeType == int)
        ? double.parse(json['discount'].toString())
        : json['discount'];
    color = json['color'];
    materialUsed = json['material_used'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['unit'] = this.unit;
    data['rating'] = this.rating;
    data['ratedBy'] = this.ratedBy;
    data['images'] = this.images;
    if (this.sellerId != null) {
      data['sellerId'] = this.sellerId!.toJson();
    }
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.subCategory != null) {
      data['subCategory'] = this.subCategory!.toJson();
    }
    data['weight'] = this.weight;
    data['stock'] = this.stock;
    data['price'] = this.price;
    data['discountedPrice'] = this.discountedPrice;
    data['life_stage'] = this.lifeStage;
    data['brand'] = this.brand;
    data['product_type'] = this.productType;
    data['flavor'] = this.flavor;
    data['breed_size'] = this.breedSize;
    data['veg_nonveg'] = this.vegNonveg;
    data['discount'] = this.discount;
    data['color'] = this.color;
    data['material_used'] = this.materialUsed;
    return data;
  }
}

// class SellerId {
//   String? sId;
//   bool? isEmailVerified;
//   bool? isApproved;
//   bool? waiveOffShipping;
//   String? name;
//   String? email;
//   String? mobile;
//   String? countryCode;
//   String? address;
//   double? latitude;
//   double? longitude;
//   String? city;
//   String? companyName;
//   String? country;
//   String? fssaiNumber;
//   String? gstNo;
//   String? logoUrl;
//   String? panNo;
//   String? pincode;
//   int? shippingLimit;
//   String? state;
//
//   SellerId(
//       {this.sId,
//       this.isEmailVerified,
//       this.isApproved,
//       this.waiveOffShipping,
//       this.name,
//       this.email,
//       this.mobile,
//       this.countryCode,
//       this.address,
//       this.latitude,
//       this.longitude,
//       this.city,
//       this.companyName,
//       this.country,
//       this.fssaiNumber,
//       this.gstNo,
//       this.logoUrl,
//       this.panNo,
//       this.pincode,
//       this.shippingLimit,
//       this.state});
//
//   SellerId.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     isEmailVerified = json['isEmailVerified'];
//     isApproved = json['isApproved'];
//     waiveOffShipping = json['waiveOffShipping'];
//     name = json['name'];
//     email = json['email'];
//     mobile = json['mobile'];
//     countryCode = json['countryCode'];
//     address = json['address'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     city = json['city'];
//     companyName = json['companyName'];
//     country = json['country'];
//     fssaiNumber = json['fssaiNumber'];
//     gstNo = json['gstNo'];
//     logoUrl = json['logoUrl'];
//     panNo = json['panNo'];
//     pincode = json['pincode'];
//     shippingLimit = json['shippingLimit'];
//     state = json['state'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['isEmailVerified'] = this.isEmailVerified;
//     data['isApproved'] = this.isApproved;
//     data['waiveOffShipping'] = this.waiveOffShipping;
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['mobile'] = this.mobile;
//     data['countryCode'] = this.countryCode;
//     data['address'] = this.address;
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     data['city'] = this.city;
//     data['companyName'] = this.companyName;
//     data['country'] = this.country;
//     data['fssaiNumber'] = this.fssaiNumber;
//     data['gstNo'] = this.gstNo;
//     data['logoUrl'] = this.logoUrl;
//     data['panNo'] = this.panNo;
//     data['pincode'] = this.pincode;
//     data['shippingLimit'] = this.shippingLimit;
//     data['state'] = this.state;
//     return data;
//   }
// }

class Category {
  String? sId;
  bool? isDeleted;
  String? name;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Category(
      {this.sId,
      this.isDeleted,
      this.name,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    isDeleted = json['isDeleted'];
    name = json['name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['isDeleted'] = this.isDeleted;
    data['name'] = this.name;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class SubCategory {
  String? sId;
  bool? isDeleted;
  String? name;
  String? categoryId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  SubCategory(
      {this.sId,
      this.isDeleted,
      this.name,
      this.categoryId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  SubCategory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    isDeleted = json['isDeleted'];
    name = json['name'];
    categoryId = json['categoryId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['isDeleted'] = this.isDeleted;
    data['name'] = this.name;
    data['categoryId'] = this.categoryId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
