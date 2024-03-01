import 'package:flutter/material.dart';
class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 30, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
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
                      const TextField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "New Enterprise, San Francisco",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                        ),
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
                      const TextField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Quality Test Engineer",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                        ),
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
                      const TextField(
                        maxLines: 3,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Working with team members to come up with new concepts and product analysis...",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      
                      const Text("Employed Status",style: TextStyle(color: Colors.black45),),
                      const SizedBox(height: 5,),
                      const Row(
                        children: [
                          Text("Previously Employed",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 13,),),
                          SizedBox(width: 10,),
                          Text("Currently Employed",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 13,),),
                        ],
                      ),
                      const SizedBox(height: 20,),

                      const Divider(),

                      const SizedBox(height: 30,),
                      
                      const Row(
                        children: [
                          Flexible(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Date Joined",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            TextField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(),
                              ),
                            ),],),),
                          SizedBox(width: 10,),
                          Flexible(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Text("Date Exit",style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            TextField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(),
                              ),
                            ),],),),
                        ],
                      ),

                      const SizedBox(height: 30,),
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
    ),);
  }
}
