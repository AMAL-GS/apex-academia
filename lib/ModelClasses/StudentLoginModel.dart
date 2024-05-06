class StudentLoginModel {
  String? acid;
  String? password;

  StudentLoginModel({this.acid, this.password});

  StudentLoginModel.fromJson(Map<String, dynamic> json) {
    acid = json['acid'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, String> data = new Map<String, String>();
    data['acid'] = this.acid!;
    data['password'] = this.password!;
    return data;
  }
}
