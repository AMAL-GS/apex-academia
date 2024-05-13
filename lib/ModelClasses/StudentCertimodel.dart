class CertificateModel {
  int? id;
  String? cert;

  CertificateModel({this.id, this.cert});

  CertificateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cert = json['cert'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cert'] = this.cert;
    return data;
  }
}