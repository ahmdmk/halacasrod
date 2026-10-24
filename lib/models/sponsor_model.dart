


class SponsorModel {
  bool? success;
  String? message;
  List<Data>? data;

  SponsorModel({this.success, this.message, this.data});

  SponsorModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? logoUrl;
  String? website;
  int? sortOrder;
  String? createdAt;

  Data(
      {this.id,
        this.name,
        this.logoUrl,
        this.website,
        this.sortOrder,
        this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logoUrl = json['logo_url'];
    website = json['website'];
    sortOrder = json['sort_order'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['logo_url'] = this.logoUrl;
    data['website'] = this.website;
    data['sort_order'] = this.sortOrder;
    data['created_at'] = this.createdAt;
    return data;
  }
}
