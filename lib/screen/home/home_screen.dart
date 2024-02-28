import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Resume Workspace",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: const Text(
              "Build Options",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             children: [
               //contact info
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context, 'contact');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/contact_info.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Contact info",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //carrier objective
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context, 'carrier');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/briefcase.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Carrier Objective",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //personal details
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context, 'personal');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/user.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Personal Details",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //eduction
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context,'eduction');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/mortarboard.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Eduction",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //experience
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context,'experience');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/thinking.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Experiences",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //technical skills
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context, 'technical');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/declaration.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Technical Skills",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //hobbies
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Image.asset(
                           "assets/iconimeg/open_book.png",
                           width: 40,
                           height: 40,
                         ),
                         const SizedBox(
                           width: 20,
                         ),
                         const Text(
                           "Interest/Hobbies",
                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                         ),
                         const Spacer(),
                         const Icon(Icons.arrow_forward_ios_outlined)
                       ],
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //project
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context,'project');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/project.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Projects",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //achievement
               Column(
                 children: [
                   InkWell(onTap:  () {
                     Navigator.pushNamed(context,'achievement');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/experience.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Achievements",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //references
               Column(
                 children: [
                   InkWell(onTap: () {
                     Navigator.pushNamed(context,'references');
                   },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/handshake.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "references",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),

               //declaration
               Column(
                 children: [
                   InkWell(
                     onTap: () {
                       Navigator.pushNamed(context,'declaration');
                     },
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Image.asset(
                             "assets/iconimeg/declaration.png",
                             width: 40,
                             height: 40,
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           const Text(
                             "Declaration",
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                           ),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios_outlined)
                         ],
                       ),
                     ),
                   ),
                   const Divider(),
                 ],
               ),
             ],
           ),
         )
        ],
      ),
    );
  }
}
