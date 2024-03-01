import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  TextEditingController txtname =TextEditingController();
  TextEditingController txtemail =TextEditingController();
  TextEditingController txtphone =TextEditingController();
  TextEditingController txtadd =TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool iscontact = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(

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
              height: 20,
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
                      child: Form(
                        key: formkey,
                        child: Column(
                          children: [

                            TextFormField(
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Colors.black45,
                                ),
                                hintText: "Name",

                              ),
                              controller: txtname,
                              validator: (value) {
                                  if(value!.isEmpty || value==null)
                                    {
                                      return "Name is required";
                                    }
                                  return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  size: 40,
                                  color: Colors.black45,
                                ),
                                hintText: "Email",

                              ),
                              controller: txtemail,
                              validator: (value) {
                                if(value!.isEmpty||value==null)
                                  {
                                    return "email is required";
                                  }
                                else if ( !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value))
                                  {
                                      return "please enter email properly";
                                  }
                              },

                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.call,
                                  size: 40,
                                  color: Colors.black45,
                                ),
                                hintText: "Phone",

                              ),
                              controller: txtphone,
                               validator: (value) {
                                 if(value!.isEmpty||value==null)
                                   {
                                     return "enter the your phone number";
                                   }
                                 else if(value.length!=10)
                                   {
                                     return "please enter the 10 digits";
                                   }
                               },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                             TextFormField(
                              maxLines: 3,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.location_on,
                                  size: 40,
                                  color: Colors.black45,
                                ),
                                hintText: "Address",
                              ),
                              controller: txtadd,
                               validator: (value) {
                                 if(value!.isEmpty||value==null)
                                   {
                                     return "please enter the address";
                                   }
                               },

                            ),
                            const SizedBox(height: 30,),

                            Center(
                              child: InkWell(onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                    if(formkey==formkey.currentState!.validate())
                                      {
                                        String name =txtname.text;
                                        String email=txtemail.text;
                                        String phone=txtphone.text;
                                        String add=txtadd.text;
                                         print("$name $email $phone $add");
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
                  Container(
                    height: 200,
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                    child:  const Stack(
                      children: [
                        CircleAvatar(
                          //radius: 70,
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
      ),
    );
  }
}
