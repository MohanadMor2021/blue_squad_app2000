class userdata {
  bool? status;
  int? code;
  String? message;
  User? user;

  userdata({this.status, this.code, this.message, this.user});

  userdata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  Null? createdAt;
  Null? updatedAt;
  Null? twoFactorSecret;
  Null? twoFactorRecoveryCodes;
  String? type;
  Null? mobile;
  Null? mobileVerifiedAt;
  String? token;

  User(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.twoFactorSecret,
        this.twoFactorRecoveryCodes,
        this.type,
        this.mobile,
        this.mobileVerifiedAt,
        this.token});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    twoFactorSecret = json['two_factor_secret'];
    twoFactorRecoveryCodes = json['two_factor_recovery_codes'];
    type = json['type'];
    mobile = json['mobile'];
    mobileVerifiedAt = json['mobile_verified_at'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['two_factor_secret'] = this.twoFactorSecret;
    data['two_factor_recovery_codes'] = this.twoFactorRecoveryCodes;
    data['type'] = this.type;
    data['mobile'] = this.mobile;
    data['mobile_verified_at'] = this.mobileVerifiedAt;
    data['token'] = this.token;
    return data;
  }
}