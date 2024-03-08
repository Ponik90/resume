import 'package:flutter/material.dart';

class TechnicalSkillsScreen extends StatefulWidget {
  const TechnicalSkillsScreen({super.key});

  @override
  State<TechnicalSkillsScreen> createState() => _TechnicalSkillsScreenState();
}

class _TechnicalSkillsScreenState extends State<TechnicalSkillsScreen> {

  List<TextEditingController> l1 = [TextEditingController()];
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
              "Technical Skills",
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
                  top: 50,
                  bottom: 30,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Enter Your Skills",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    Column(
                      children: List.generate(l1.length, (index) =>  Row(
                        children: [
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: "C Programing,Web Technical",
                                hintStyle: TextStyle(color: Colors.grey),
                                
                              ),
                              controller: l1[index],  
                            ),
                            
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete,
                              size: 30,
                            ),
                          )
                        ],
                      ),)
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
                          for(int i=0;i<=l1.length;i++)
                            {
                              l1.add(TextEditingController());
                            }
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
            ),
          ),
        ],
      ),
    );
  }
}
