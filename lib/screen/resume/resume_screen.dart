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
        children: [Container(
          height: 100,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.blueAccent,
          padding: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomCenter,
          child: const Text("RESUMES",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
          ),),
        ),
          Text("${g1.contactName}")
        ],
      ),
    );
  }
}
