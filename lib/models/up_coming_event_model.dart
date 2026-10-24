class UpComingEventModel {
  bool? success;
  String? message;
  List<Data>? data;

  UpComingEventModel({this.success, this.message, this.data});

  UpComingEventModel.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? description;
  String? startDatetime;
  String? endDatetime;
  String? location;
  int? capacity;
  bool? registrationRequired;
  String? createdBy;
  String? imageUrl;
  String? createdAt;
  String? updatedAt;
  Creator? creator;

  Data(
      {this.id,
        this.title,
        this.description,
        this.startDatetime,
        this.endDatetime,
        this.location,
        this.capacity,
        this.registrationRequired,
        this.createdBy,
        this.imageUrl,
        this.createdAt,
        this.updatedAt,
        this.creator});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    startDatetime = json['start_datetime'];
    endDatetime = json['end_datetime'];
    location = json['location'];
    capacity = json['capacity'];
    registrationRequired = json['registration_required'];
    createdBy = json['created_by'];
    imageUrl = json['image_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    creator =
    json['creator'] != null ? new Creator.fromJson(json['creator']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['start_datetime'] = this.startDatetime;
    data['end_datetime'] = this.endDatetime;
    data['location'] = this.location;
    data['capacity'] = this.capacity;
    data['registration_required'] = this.registrationRequired;
    data['created_by'] = this.createdBy;
    data['image_url'] = this.imageUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.creator != null) {
      data['creator'] = this.creator!.toJson();
    }
    return data;
  }
}

class Creator {
  String? id;
  String? username;
  String? role;

  Creator({this.id, this.username, this.role});

  Creator.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['role'] = this.role;
    return data;
  }
}
