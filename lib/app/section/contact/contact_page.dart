import 'package:flutter/material.dart';
import 'package:portfolio/app/section/contact/contact_desktop.dart';
import 'package:portfolio/app/section/contact/contact_mobile.dart';
import 'package:portfolio/app/section/contact/contact_tablet.dart';
import 'package:portfolio/core/responsive/responsive.dart';


class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: ContactDesktop(),
      tablet: ContactTablet(),
      mobile: ContactMobile(),
    );
  }
}
