// class student_assignment {
//   String? subject;
//   List<Assignments>? assignments;

//   student_assignment({this.subject, this.assignments});

//   student_assignment.fromJson(Map<String, dynamic> json) {
//     subject = json['subject'];
//     if (json['assignments'] != null) {
//       assignments = <Assignments>[];
//       json['assignments'].forEach((v) {
//         assignments!.add(new Assignments.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['subject'] = this.subject;
//     if (this.assignments != null) {
//       data['assignments'] = this.assignments!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Assignments {
//   String? uptitle;
//   String? desc;
//   int? id;
//   String? date;
//   String? status;
//   int? subid;
//   String? subject;
//   String? deadline;

//   Assignments(
//       {this.uptitle,
//       this.desc,
//       this.id,
//       this.date,
//       this.status,
//       this.subid,
//       this.subject,
//       this.deadline});

//   Assignments.fromJson(Map<String, dynamic> json) {
//     uptitle = json['uptitle'];
//     desc = json['desc'];
//     id = json['id'];
//     date = json['date'];
//     status = json['status'];
//     subid = json['subid'];
//     subject = json['subject'];
//     deadline = json['deadline'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['uptitle'] = this.uptitle;
//     data['desc'] = this.desc;
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['status'] = this.status;
//     data['subid'] = this.subid;
//     data['subject'] = this.subject;
//     data['deadline'] = this.deadline;
//     return data;
//   }
// }
class Assignment {
  final String uptitle;
  final String desc;
  final int id;
  final String date;
  final String status;
  final int subid;
  final String subject;
  final String? deadline;

  Assignment({
    required this.uptitle,
    required this.desc,
    required this.id,
    required this.date,
    required this.status,
    required this.subid,
    required this.subject,
    this.deadline,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) {
    return Assignment(
      uptitle: json['uptitle'],
      desc: json['desc'],
      id: json['id'],
      date: json['date'],
      status: json['status'],
      subid: json['subid'],
      subject: json['subject'],
      deadline: json['deadline'],
    );
  }
}

class SubjectAssignments {
  final String subject;
  final List<Assignment> assignments;

  SubjectAssignments({
    required this.subject,
    required this.assignments,
  });

  factory SubjectAssignments.fromJson(Map<String, dynamic> json) {
    var list = json['assignments'] as List;
    List<Assignment> assignmentsList =
        list.map((i) => Assignment.fromJson(i)).toList();

    return SubjectAssignments(
      subject: json['subject'],
      assignments: assignmentsList,
    );
  }
}
