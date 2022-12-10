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
      children: [
        SizedBox(
          //color: Colors.amber,
          //width: 510,
          width: (MediaQuery.of(context).size.width < 640) ? MediaQuery.of(context).size.width/1.1 : 510,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [
                LinkPreviewGenerator(
                  bodyMaxLines: 3,
                  linkPreviewStyle: LinkPreviewStyle.large,
                  link: "https://github.com/ITIS-G-CARDANO-PAVIA/noncifregherete-game",
                  showGraphic: true,
                  )
            ],
          ),
        )
      ],
    );
  }

}