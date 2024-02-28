import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/utiles/screenlist.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
       DeviceOrientation.portraitUp,
    ],
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: screenname,
    ),
  );
}
