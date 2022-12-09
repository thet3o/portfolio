import 'package:flutter/material.dart';

class AboutView extends StatefulWidget{
  const AboutView({super.key});

  @override
  State<StatefulWidget> createState() => AboutViewState();

}

class AboutViewState extends State<AboutView>{
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
              Text("What can I talk about me? ", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
              )),
              Text("First of all, I'm a software developer with the passion to create things that can people or enjoy them.", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 67, 160, 71)
              )),
              Text("After all the scope of programming is not solve problems?", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
              )),
              Text("Well that's what I love to do!", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 129, 199, 132)
              ))
            ],
          ),
        )
      ],
    );
  }

}