import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:link_preview_generator/link_preview_generator.dart';

class ProjectsView extends StatefulWidget{
  const ProjectsView({super.key});

  @override
  State<StatefulWidget> createState() => ProjectsViewState();

}

class ProjectsViewState extends State<ProjectsView>{

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          //color: Colors.amber,
          //width: 510,
          width: (MediaQuery.of(context).size.width < 640) ? MediaQuery.of(context).size.width/1.1 : 510,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children: const [
                ProjectCard(title: "UltimateRobotLab", subtitle: "This is a new version of InMoov Robot control software", titleColor: Color.fromARGB(255, 255, 0, 0), subtitleColor: Color.fromARGB(255, 255, 82, 82),),
                ProjectCard(title: "SergioBotOS", subtitle: "The OS for ITIS G.Cardano food delivery robot", titleColor: Color.fromARGB(255, 255, 136, 0), subtitleColor: Color.fromARGB(255, 255, 172, 78))
            ],
          ),
        )
      ],
    );
  }

}

class ProjectCard extends StatelessWidget{
  const ProjectCard({required this.title, required this.subtitle, required this.titleColor, required this.subtitleColor});

  final String title;
  final String subtitle;
  final Color titleColor;
  final Color subtitleColor;

  @override
  Widget build(BuildContext context) {
    return Card(
            color: const Color.fromARGB(255, 62, 62, 62),
            child: SizedBox(
              width: 350,
              height: 100,
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: subtitleColor
                  ),)
                ],
              )
            ),
    );
  }
}