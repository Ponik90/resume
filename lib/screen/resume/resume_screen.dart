import 'dart:io';

import 'package:flutter/material.dart';

import '../../utiles/global_screen_var.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Resume Builder",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.blueAccent,
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "RESUMES",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
         const SizedBox(height: 20,),
         Expanded(
           child: SingleChildScrollView(
             child: Container(
                padding: const EdgeInsets.all(10),
               color: Colors.blueAccent.withOpacity(0.5),
               width: MediaQuery.sizeOf(context).width*0.90,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Center(child: CircleAvatar(maxRadius: 100,backgroundImage: FileImage(File("${g1.contactImage}"),),)),
                   Text("name : ${g1.contactName}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   Text("email : ${g1.contactEmail}"),
                   Text("phone : ${g1.contactPhone}"),
                   Text("Address : ${g1.contactAddress}"),
                   Text("Objective : ${g1.carrierObjective}"),
                   Text("Designation : ${g1.carrierDesignation}"),
                   Text("DOB : ${g1.personalDOB}"),
                   Text("Nationality : ${g1.personalNationality}"),
                   Text("Course : ${g1.eductionCourse}"),
                   Text("School/College : ${g1.eductionSchool}"),
                   Text("Percentage : ${g1.eductionPercentage}"),
                   Text("Year of pass  : ${g1.eductionPass}"),
                   Text("Company Name  : ${g1.experienceCompanyName}"),
                   Text("School  : ${g1.experienceSchool}"),
                   Text("Roles  : ${g1.experienceRoles}"),
                   Text("Joined Date  : ${g1.experienceJoinedDate}"),
                   Text("Exit Date  : ${g1.experienceExitDate}"),
                 ],
               ),
             ),
           ),
         )
        ],
      ),
    );
  }
}
