   
   
   import 'package:flutter/material.dart';
import 'package:flutter_apex_academia/Apis&URLs/API.dart';
import 'package:flutter_apex_academia/ModelClasses/StAssignmentmodel.dart';

class DEmoAssignmentPage extends StatelessWidget {
  final Apiclass apiService = Apiclass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
      ),
      body: FutureBuilder<List<SubjectAssignments>>(
        future: apiService.fetchAssignments(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No assignments found.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final subjectAssignments = snapshot.data![index];
                return ExpansionTile(
                  title: Text(subjectAssignments.subject),
                  children: subjectAssignments.assignments.map((assignment) {
                    return ListTile(
                      title: Text(assignment.uptitle),
                      subtitle: Text(assignment.desc),
                      trailing: Text(assignment.status),
                    );
                  }).toList(),
                );
              },
            );
          }
        },
      ),
    );
  }
}
