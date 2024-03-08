import 'package:flutter/material.dart';

import '../../utiles/global_screen_var.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  TextEditingController txtcname = TextEditingController();
  TextEditingController txtcollege = TextEditingController();
  TextEditingController txtroles = TextEditingController();
  TextEditingController txtdjoined = TextEditingController();
  TextEditingController txtdexit = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String employed = "";

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
              "Experience",
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
                      // Company
                      const Text(
                        "Company Name",
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
                          hintText: "New Enterprise, San Francisco",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                        ),
                        controller: txtcname,
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return "Enter the cpompany name";
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
                          hintText: "Quality Test Engineer",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                        ),
                        controller: txtcollege,
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return "enter the college name ";
                          }
                        },
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      //role
                      const Text(
                        "Roles (optional)",
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
                        maxLines: 3,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText:
                              "Working with team members to come up with new concepts and product analysis...",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                        ),
                        controller: txtroles,
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      const Text(
                        "Employed Status",
                        style: TextStyle(color: Colors.black45),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile(
                              value: "Previously",
                              groupValue: employed,
                              onChanged: (value) {
                                setState(
                                  () {
                                    employed = value!;
                                  },
                                );
                              },
                              title: Text(
                                "Previously Employed",
                                style: employed=="Previously"?const TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ):const TextStyle(

                                  fontSize: 13,
                                )
                              ),
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                              value: "Current",
                              groupValue: employed,
                              onChanged: (value) {
                                setState(
                                  () {
                                    employed = value!;
                                  },
                                );
                              },
                              title: Text(
                                "Currently Employed",
                                style: employed == "Current"
                                    ? const TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      )
                                    : const TextStyle(
                                        fontSize: 13,
                                      ),
                              ),
                              contentPadding: EdgeInsets.zero,
                              tileColor: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      const Divider(),

                      const SizedBox(
                        height: 30,
                      ),

                      Row(
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Date Joined",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.done,
                                  decoration: const InputDecoration(
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: txtdjoined,
                                  validator: (value) {
                                    if (value!.isEmpty || value == null) {
                                      return "enter the joined date";
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Date Exit",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.done,
                                  decoration: const InputDecoration(
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: txtdexit,
                                  validator: (value) {
                                    if (value!.isEmpty || value == null) {
                                      return "enter the exit date";
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (formkey.currentState!.validate()) {
                              g1.experienceCompanyName = txtcname.text;
                              g1.experienceSchool = txtcollege.text;
                              g1.experienceRoles = txtroles.text;
                              g1.experienceJoinedDate = txtdjoined.text;
                              g1.experienceExitDate = txtdexit.text;

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
    );
  }
}
