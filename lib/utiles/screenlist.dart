import 'package:flutter/cupertino.dart';
import 'package:resume/screen/achievement/achievement_screen.dart';
import 'package:resume/screen/carrier/carrier_screen.dart';
import 'package:resume/screen/contact/contact_info_screen.dart';
import 'package:resume/screen/declaration/declaration_screen.dart';
import 'package:resume/screen/eduction/eduction_screen.dart';
import 'package:resume/screen/experience/experience_screen.dart';
import 'package:resume/screen/home/home_screen.dart';
import 'package:resume/screen/personal_detail/personal_detail_screen.dart';
import 'package:resume/screen/project/project_screen.dart';
import 'package:resume/screen/references/references_screen.dart';
import 'package:resume/screen/resume/resume_screen.dart';
import 'package:resume/screen/splash/splash_screen.dart';
import 'package:resume/screen/technical/technical_skills_screen.dart';

Map<String, WidgetBuilder> screenname = {
  '/': (context) => const SplashScreen(),
  'homescreen':(context) => const HomeScreen(),
  'contact': (context) => const ContactInfoScreen(),
  'carrier': (context) => const CarrierScreen(),
  'personal': (context) => const PersonalDetailScreen(),
  'eduction': (context) => const EductionScreen(),
  'experience': (context) => const ExperienceScreen(),
  'technical': (context) => const TechnicalSkillsScreen(),
  'projects': (context) => const ProjectScreen(),
  'achievement':(context) => const AchievementScreen(),
  'references':(context) => const ReferencesScreen(),
  'declaration':(context) => const DeclarationScreen(),
  'resume':(context) => const ResumeScreen(),
};
