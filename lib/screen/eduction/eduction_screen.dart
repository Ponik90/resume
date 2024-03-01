import 'package:flutter/material.dart';

class EductionScreen extends StatefulWidget {
  const EductionScreen({super.key});

  @override
  State<EductionScreen> createState() => _EductionScreenState();
}

class _EductionScreenState extends State<EductionScreen> {
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
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 30, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Course
                        Text(
                          "Course/Degree",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "B.Tech Information Technology",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        //school

                        Text(
                          "School/College/Institute",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Bhagavan Mahavir University",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        //persenteg
                        Text(
                          "School/College/Institute",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "70% (or) 7.0 CGPA",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        //pass
                        Text(
                          "Year Of Pass",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "2019",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
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
