import 'package:flutter/material.dart';

import '../../utiles/global_screen_var.dart';
class ReferencesScreen extends StatefulWidget {
  const ReferencesScreen({super.key});

  @override
  State<ReferencesScreen> createState() => _ReferencesScreenState();
}

class _ReferencesScreenState extends State<ReferencesScreen> {

  TextEditingController txtName = TextEditingController();
  TextEditingController txtDesignation = TextEditingController();
  TextEditingController txtOrganization = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
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
                "Reference",
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
                          "Reference Name",
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
                            hintText: "Suresh Shah",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                          controller: txtName,
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
                          "Designation",
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
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Marketing Manager,ID-342332",
                            border: OutlineInputBorder(),
                          ),
                          controller: txtDesignation,
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
                          "Organization/Institute",
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
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            hintText: "Green Energy Pvt. Ltd.",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                          controller: txtOrganization,
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
                                g1.referenceName = txtName.text;
                                g1.referenceDesignation = txtDesignation.text;
                                g1.referenceOrganization = txtOrganization.text;


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
