import 'package:flutter/material.dart';

class CarrierScreen extends StatefulWidget {
  const CarrierScreen({super.key});

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
  TextEditingController txtcobject = TextEditingController();
  TextEditingController txtcdesig = TextEditingController();

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
                "Carrier Objective",
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
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.90,
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                          bottom: 30,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Career Objective",
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
                            TextFormField(
                              maxLines: 5,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: "Descripation",
                                border: OutlineInputBorder(),
                              ),
                              controller: txtcobject,
                              validator: (value) {
                                if(value!.isEmpty || value==null)
                                  {
                                    return "enter the Descripation";
                                  }
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.90,
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 10,
                          right: 20,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Current Designation (Experienced Candidate)",
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
                            TextFormField(
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                hintText: "Software Engineer",
                                border: OutlineInputBorder(),
                              ),
                              controller: txtcdesig,
                              validator: (value) {
                                if(value!.isEmpty||value==null)
                                  {
                                    return "enter the designation";
                                  }
                              },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20,),
                      Center(
                        child: InkWell(onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          if(formkey.currentState!.validate())
                          {
                            String object =txtcobject.text;
                            String desig=txtcdesig.text;
                            print("$object $desig ");
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
          ],
        ),
      ),
    );
  }
}
