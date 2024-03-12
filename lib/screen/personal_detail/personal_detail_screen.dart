import 'package:flutter/material.dart';

import '../../utiles/global_screen_var.dart';

class PersonalDetailScreen extends StatefulWidget {
  const PersonalDetailScreen({super.key});

  @override
  State<PersonalDetailScreen> createState() => _PersonalDetailScreenState();
}

class _PersonalDetailScreenState extends State<PersonalDetailScreen> {
  TextEditingController txtdob = TextEditingController();
  TextEditingController txtnationality = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String status = "Unmarried";

  bool English = false;
  bool Hindi = false;
  bool Gujrati = false;

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
                "Personal Details",
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
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // dob
                        const Text(
                          "DOB",
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
                              hintText: "DD/MM/YYYY",
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(color: Colors.grey)),
                          controller: txtdob,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "enter the DOB";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // status
                        const Text(
                          "Marital Status",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),

                        RadioListTile(
                          value: "Unmarried",
                          groupValue: status,
                          onChanged: (value) {
                            setState(
                              () {
                                status = value!;
                                g1.personalStates = value;
                              },
                            );
                          },
                          title: Text(
                            "Unmarried",
                            style: status == "Unmarried"
                                ? const TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )
                                : const TextStyle(
                                    fontSize: 15,
                                  ),
                          ),
                          activeColor: Colors.blueAccent,
                          contentPadding: EdgeInsets.zero,
                        ),

                        RadioListTile(
                          value: "Married",
                          groupValue: status,
                          onChanged: (value) {
                            setState(
                              () {
                                status = value!;
                                g1.personalStates = value;
                              },
                            );
                          },
                          title: Text(
                            "Married",
                            style: status != "Unmarried"
                                ? const TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )
                                : const TextStyle(
                                    fontSize: 15,
                                  ),
                          ),
                          activeColor: Colors.blueAccent,
                          contentPadding: EdgeInsets.zero,
                        ),

                        //language
                        const Text(
                          "Languages Known",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        CheckboxListTile(
                          value: English,
                          onChanged: (value) {
                            setState(
                              () {
                                English = value!;
                                g1.personalEnglish=value;
                              },
                            );
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            "English",
                            style: English==false?const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ):const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )

                          ),
                          activeColor: Colors.blueAccent,
                        ),
                        CheckboxListTile(
                          value: Hindi,
                          onChanged: (value) {
                            setState(
                              () {
                                Hindi = value!;
                                g1.personalHindi=value;
                              },
                            );
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            "Hindi",
                            style: Hindi==false?const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ):const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )

                          ),
                          activeColor: Colors.blueAccent,
                        ),
                        CheckboxListTile(
                          value: Gujrati,
                          onChanged: (value) {
                            setState(
                              () {
                                Gujrati = value!;
                                g1.personalGujarati=value;
                              },
                            );
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            "Gujarati",
                            style:Gujrati==false?const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ):const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )

                          ),
                          activeColor: Colors.blueAccent,
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        //nationality
                        const Text(
                          "Nationality",
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
                            hintText: "Indian",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                          controller: txtnationality,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "enter the nationality";
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
                                g1.personalDOB = txtdob.text;
                                g1.personalNationality = txtnationality.text;

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
