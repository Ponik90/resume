import 'package:flutter/material.dart';

import '../../utiles/global_screen_var.dart';

class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {

  List<TextEditingController> l1 = [TextEditingController()];
  List<String> l2=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              for (int i = 0; i < l1.length; i++) {
                l2.add(l1[i].text);
              }
              g1.achieve = l2;
            },
            icon: const Icon(
              Icons.check,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],        backgroundColor: Colors.blueAccent,
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
                      children: [
                        Center(
                          child: Text(
                            "Enter Your Achievements",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // skill 1
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children:
                            List.generate(l1.length, (index) =>Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                      hintText: "Exceeded sales 17% average",
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                    controller: l1[index],
                                  ),
                                ),
                                IconButton(onPressed: (){
                                  setState(() {
                                    l1.removeAt(index);
                                  });
                                }, icon: const Icon(Icons.delete,size: 30,),)
                              ],
                            ),)
                          ,
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                l1.add(TextEditingController());
                              },);
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 35,
                            ),
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
