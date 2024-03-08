import 'package:flutter/material.dart';
class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {
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
              "Achievements",
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
                        top: 50, bottom: 30, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Center(child: Text("Enter Your Achievements",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 20,fontWeight: FontWeight.bold,),)),

                        // skill 1
                        const SizedBox(
                          height: 30,
                        ),
                        const TextField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: "Exceeded sales 17% average",
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(Icons.delete)
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        //skill 2
                        const TextField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: "Exceeded sales 17% average",
                              hintStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(Icons.delete)
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),
                        const TextField(

                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add,color: Colors.grey,),
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
      ),);
  }
}
