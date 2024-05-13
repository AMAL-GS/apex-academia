class notesmodel {
  String? subject;
  String? notes;

  notesmodel({this.subject, this.notes});

  notesmodel.fromJson(Map<String, dynamic> json) {
    subject = json['subject'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subject'] = this.subject;
    data['notes'] = this.notes;
    return data;
  }
}
