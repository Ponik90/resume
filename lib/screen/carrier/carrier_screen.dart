import 'package:flutter/material.dart';

class CarrierScreen extends StatefulWidget {
  const CarrierScreen({super.key});

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Career Objective",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          maxLines: 5,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Descripation",
                            border: OutlineInputBorder(),
                          ),
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Designation (Experienced Candidate)",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Software Engineer",
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
