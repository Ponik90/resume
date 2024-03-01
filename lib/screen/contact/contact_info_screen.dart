import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  bool iscontact = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Add Your Contact",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.blueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          iscontact = true;
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: iscontact ? Colors.amber : Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          iscontact = false;
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: iscontact == false
                                ? Colors.amber
                                : Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: IndexedStack(
              index: iscontact?0:1,
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                
                        TextField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.black45,
                            ),
                            hintText: "Name",
                
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              size: 40,
                              color: Colors.black45,
                            ),
                            hintText: "Email",
                
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.call,
                              size: 40,
                              color: Colors.black45,
                            ),
                            hintText: "Phone",
                
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          maxLines: 3,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.location_on,
                              size: 40,
                              color: Colors.black45,
                            ),
                            hintText: "Address",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: const Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black26,
                        maxRadius: 50,
                        child: Text(
                          "ADD",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      CircleAvatar(backgroundColor: Colors.blueAccent,maxRadius: 15,child: Icon(Icons.add,color: Colors.white,),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
