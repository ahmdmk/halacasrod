class CommonModel {
  bool? success;
  String ? message;
  dynamic data;

  CommonModel({required this.success, required this.data,this.message});

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      success: json['success'],
      data: json['data'],
      message: json['message']
    );
  }
}



