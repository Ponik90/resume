import 'package:flutter/material.dart';
class EductionScreen extends StatefulWidget {
  const EductionScreen({super.key});

  @override
  State<EductionScreen> createState() => _EductionScreenState();
}

class _EductionScreenState extends State<EductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Eduction"),),);
  }
}
