import 'package:flutter/material.dart';
import 'package:portfolio/app/section/about/about.dart';
import 'package:portfolio/app/section/contact/contact_page.dart';
import 'package:portfolio/app/section/home/home.dart';
import 'package:portfolio/app/section/projects/project.dart';
import 'package:portfolio/core/constants/assets.dart';

List<Widget> body = [
  HomePage(),
  AboutPage(),
  ProjectPage(),
  ContactPage(),
];

// Skills
List<String> techStack = [
  // Frameworks & SDKs
  Assets.flutter,
  Assets.firebase,
  Assets.supabase,

  // Languages
  Assets.dart,
  Assets.html,
  Assets.css,
  Assets.javascript,
  Assets.graphql,

  // Backend / Tools
  Assets.nodejs,
  Assets.postman,

  // IDEs & Design Tools
  Assets.vscode,
  Assets.andoridStudio,
  Assets.figma,

  // Version Control
  Assets.git,
];