import 'package:flutter/material.dart';
import 'package:porfolio/screens/widgets/project_card_widget.dart';
// import 'package:flutter/widgets.dart';
import 'package:porfolio/screens/widgets/text_widet.dart';
import 'package:url_launcher/url_launcher.dart';

class AllProjects extends StatelessWidget {
  final Size size;
  const AllProjects({super.key, required this.size});
  void launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProjectCardWidget(
          title: "Taalem Online",
          description: "A responsive e-learning platform developed with Next.js and Spring Boot using Tailwind CSS. The platform supports multiple user roles such as admin, teacher and parent.",
          imageUrl: "assets/images/project1.png",
          onGithubTap : () => launchURL(Uri.parse("https://github.com/nessimbns2/E-Learning-Platform")),
           onWebsiteTap : () => launchURL(Uri.parse("https://github.com/nessimbns2/E-Learning-Platform")),
        ),
              ProjectCardWidget(
          title: "Taalem Online",
          description: "A responsive e-learning platform developed with Next.js and Spring Boot using Tailwind CSS. The platform supports multiple user roles such as admin, teacher and parent.",
          imageUrl: "assets/images/project1.png",
          onGithubTap : () => launchURL(Uri.parse("https://github.com/nessimbns2/E-Learning-Platform")),
           onWebsiteTap : () => launchURL(Uri.parse("https://github.com/nessimbns2/E-Learning-Platform")),
        ),
                    ProjectCardWidget(
          title: "Taalem Online",
          description: "A responsive e-learning platform developed with Next.js and Spring Boot using Tailwind CSS. The platform supports multiple user roles such as admin, teacher and parent.",
          imageUrl: "assets/images/project1.png",
          onGithubTap : () => launchURL(Uri.parse("https://github.com/nessimbns2/E-Learning-Platform")),
          onWebsiteTap : () => launchURL(Uri.parse("https://github.com/nessimbns2/E-Learning-Platform")),
        ),
      ],
          ),
    );
  }
}