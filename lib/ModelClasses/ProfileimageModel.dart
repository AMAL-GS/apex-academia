class profileimageModel {
  List<String>? imageUrls;

  profileimageModel({this.imageUrls});

  profileimageModel.fromJson(Map<String, dynamic> json) {
    imageUrls = json['image_urls'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_urls'] = this.imageUrls;
    return data;
  }
}
