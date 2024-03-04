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
          Expanded(
            child: SingleChildScrollView(
               child: Column(
                 children: [
                   buildoption(iconimage: 'contact_info.png',name: 'Contact info',routes: 'contact'),
                   buildoption(iconimage: 'briefcase.png',name: 'Carrier Objective',routes: 'carrier'),
                   buildoption(iconimage: 'user.png',name: 'Personal Details',routes: 'personal'),
                   buildoption(iconimage: 'mortarboard.png',name: 'Eduction',routes: 'eduction'),
                   buildoption(iconimage: 'thinking.png',name: 'Experiences',routes: 'experience'),
                   buildoption(iconimage: 'experience.png',name: 'Technical Skill',routes: 'technical'),
                   buildoption(iconimage: 'open_book.png',name: 'Interest/Hobbies',routes: ''),
                   buildoption(iconimage: 'project.png',name: 'Projects',routes: 'projects'),
                   buildoption(iconimage: 'experience.png',name: 'Achievements',routes: 'achievement'),
                   buildoption(iconimage: 'handshake.png',name: 'References',routes: 'references'),
                   buildoption(iconimage: 'declaration.png',name: 'Declaration',routes: 'declaration'),
                   buildoption(iconimage: 'open_cardboard_box.png',name: 'Resume',routes: 'resume'),
                 ],
               )
            ),
          )
        ],
      ),
    );
  }

  Widget buildoption({required String iconimage,required String name,required String routes})
  {
   return Column(
     children: [
       InkWell(
         onTap: () {
           Navigator.pushNamed(context, routes);
         },
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             children: [
               Image.asset(
                 "assets/iconimeg/$iconimage",
                 width: 40,
                 height: 40,
               ),
               const SizedBox(
                 width: 20,
               ),
               Text(
                 "$name",
                 style: const TextStyle(
                     fontWeight: FontWeight.bold, fontSize: 20),
               ),
               const Spacer(),
               const Icon(Icons.arrow_forward_ios_outlined)
             ],
           ),
         ),
       ),
       const Divider(),
     ],
   );
  }
}
