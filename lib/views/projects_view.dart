import 'package:flutter/material.dart';

class ProjectsView extends StatefulWidget{
  const ProjectsView({super.key});

  @override
  State<StatefulWidget> createState() => ProjectsViewState();

}

class ProjectsViewState extends State<ProjectsView>{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          //color: Colors.amber,
          //width: 510,
          width: (MediaQuery.of(context).size.width < 640) ? MediaQuery.of(context).size.width/1.1 : 510,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: const [
              Text("This page", style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.amber
              )),
              Text("is working in progress", style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.amber
              ))
            ],
          ),
        )
      ],
    );
  }

}