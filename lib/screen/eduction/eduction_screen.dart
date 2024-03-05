import 'package:flutter/material.dart';

import '../../utiles/global_screen_var.dart';

class EductionScreen extends StatefulWidget {
  const EductionScreen({super.key});

  @override
  State<EductionScreen> createState() => _EductionScreenState();
}

class _EductionScreenState extends State<EductionScreen> {
  TextEditingController txtdegree = TextEditingController();
  TextEditingController txtcollege = TextEditingController();
  TextEditingController txtper = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            Container(
              height: 100,
              alignment: Alignment.topCenter,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.blueAccent,
              child: const Text(
                "Eduction",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 30,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Course
                        const Text(
                          "Course/Degree",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "B.Tech Information Technology",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                          controller: txtdegree,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "this field is require";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        //school

                        const Text(
                          "School/College/Institute",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "Bhagavan Mahavir University",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                          controller: txtcollege,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "this field is require";
                            }
                          },
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //persenteg
                        const Text(
                          "School/College/Institute",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "70% (or) 7.0 CGPA",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                          controller: txtper,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "this field is require";
                            }
                          },
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //pass
                        const Text(
                          "Year Of Pass",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            hintText: "2019",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          controller: txtpass,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "this field is require";
                            }
                          },
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Center(
                          child: InkWell(
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if (formkey.currentState!.validate()) {
                                g1.eductionCourse = txtdegree.text;
                                g1.eductionSchool = txtcollege.text;
                                g1.eductionPercentage = txtper.text;
                                g1.eductionPass = txtpass.text;

                                formkey.currentState!.reset();

                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("save"),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              height: 30,
                              width: 80,
                              color: Colors.blueAccent,
                              alignment: Alignment.center,
                              child: const Text(
                                "SAVE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
