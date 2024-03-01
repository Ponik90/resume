import 'package:flutter/material.dart';

class PersonalDetailScreen extends StatefulWidget {
  const PersonalDetailScreen({super.key});

  @override
  State<PersonalDetailScreen> createState() => _PersonalDetailScreenState();
}

class _PersonalDetailScreenState extends State<PersonalDetailScreen> {
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
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
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
                        const TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "DD/MM/YYYY",
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.grey)
                          ),
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
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Single",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const Text(
                          "Married",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
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
                        const Text(
                          "English",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const Text(
                          "Hindi",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const Text(
                          "Gujarati",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
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
                        const TextField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Indian",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Center(
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
