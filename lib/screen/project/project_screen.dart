import 'package:flutter/material.dart';

import '../../utiles/global_screen_var.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  TextEditingController txttitle = TextEditingController();
  TextEditingController txtroles = TextEditingController();
  TextEditingController txttechnologie = TextEditingController();
  TextEditingController txtdescription = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool cp = false;
  bool cpp = false;
  bool flutter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Project",
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Project Title",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Resume Builder App",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: txttitle,
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return "this field is require";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Technologies",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      CheckboxListTile(
                        value: cp,
                        onChanged: (value) {
                          setState(() {
                            cp = value!;
                            g1.cp = value;
                          });
                        },
                        title: Text(
                          "C Programming",
                          style: cp
                              ? const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )
                              : const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                        ),
                        activeColor: Colors.blueAccent,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        value: cpp,
                        onChanged: (value) {
                          setState(() {
                            cpp = value!;
                            g1.cpp = value;
                          });
                        },
                        title: Text(
                          "CPP",
                          style: cpp
                              ? const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )
                              : const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                        ),
                        activeColor: Colors.blueAccent,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        value: flutter,
                        onChanged: (value) {
                          setState(
                            () {
                              flutter = value!;
                              g1.flutter = value;
                            },
                          );
                        },
                        title: Text(
                          "Flutter",
                          style: flutter
                              ? const TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )
                              : const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                        ),
                        activeColor: Colors.blueAccent,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Roles",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 2,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Organize team members,Code analysis",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: txtroles,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Technologies",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "5- Programmers",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: txttechnologie,
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return "this field is require";
                          }
                        },
                      ),
                      const Text(
                        "Project Description",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        maxLines: 2,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Enter Your Project Description",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: txtdescription,
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return "this field is require";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (formkey.currentState!.validate()) {
                              g1.projectTitle = txttitle.text;
                              g1.projectRoles = txtroles.text;
                              g1.projectTechnologies = txttechnologie.text;
                              g1.projectDescription = txtdescription.text;

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
          )
        ],
      ),
    );
  }
}
