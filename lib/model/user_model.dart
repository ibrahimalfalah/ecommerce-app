class UserModel {
  String? name;
  String? email;
  String? mobile;
  String? address;
  String? uId;

  UserModel({
    this.name,
    this.email,
    this.mobile,
    this.address,
    this.uId,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    address = json['address'];
    uId = json['uId'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'mobile': mobile,
      'address': address,
      'uId': uId,
    };
  }
}
