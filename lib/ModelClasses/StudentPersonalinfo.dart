class personalmodel {
  String? fname;
  String? lname;
  String? title;
  String? dob;
  String? gender;
  String? nationality;
  String? bldgrp;
  String? pob;
  String? sob;
  String? religion;
  String? hight;
  String? weight;
  String? ml;
  String? cast;
  String? email;
  String? phone;
  String? sphone;
  String? house;
  String? city;
  String? pin;
  String? district;

  personalmodel(
      {this.fname,
      this.lname,
      this.title,
      this.dob,
      this.gender,
      this.nationality,
      this.bldgrp,
      this.pob,
      this.sob,
      this.religion,
      this.hight,
      this.weight,
      this.ml,
      this.cast,
      this.email,
      this.phone,
      this.sphone,
      this.house,
      this.city,
      this.pin,
      this.district});

  personalmodel.fromJson(Map<dynamic, dynamic> json) {
    fname = json['fname'];
    lname = json['lname'];
    title = json['title'];
    dob = json['dob'];
    gender = json['gender'];
    nationality = json['nationality'];
    bldgrp = json['bldgrp'];
    pob = json['pob'];
    sob = json['sob'];
    religion = json['religion'];
    hight = json['hight'];
    weight = json['weight'];
    ml = json['ml'];
    cast = json['cast'];
    email = json['email'];
    phone = json['phone'];
    sphone = json['sphone'];
    house = json['house'];
    city = json['city'];
    pin = json['pin'];
    district = json['district'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['title'] = this.title;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['nationality'] = this.nationality;
    data['bldgrp'] = this.bldgrp;
    data['pob'] = this.pob;
    data['sob'] = this.sob;
    data['religion'] = this.religion;
    data['hight'] = this.hight;
    data['weight'] = this.weight;
    data['ml'] = this.ml;
    data['cast'] = this.cast;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['sphone'] = this.sphone;
    data['house'] = this.house;
    data['city'] = this.city;
    data['pin'] = this.pin;
    data['district'] = this.district;
    return data;
  }
}
