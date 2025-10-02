import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/section/contact/contact_desktop.dart';
import 'package:portfolio/app/section/contact/contact_mobile.dart';
import 'package:portfolio/app/section/contact/contact_tablet.dart';
import 'package:portfolio/app/utils/utils.dart';
import 'package:portfolio/core/constants/assets.dart';
import 'package:portfolio/core/responsive/responsive.dart';
import 'package:portfolio/core/utils/colors.dart';
import 'package:portfolio/core/utils/functions.dart';

import 'widgets/contact_email_card.dart';
import 'widgets/contact_footer_text.dart';
import 'widgets/contact_social_button.dart';

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
