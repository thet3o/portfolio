import 'package:flutter/material.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => HomeViewState();

}

class HomeViewState extends State<HomeView>{
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
              Text("Hi, I'm ", style: TextStyle(
                fontSize: 20,
                color: Colors.white
              )),
              Text("Matteo", style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 67, 160, 71)
              )),
              Text("Vacalebri", style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 129, 199, 132)
              )),
              Text("I create things with Python, Kotlin and Flutter", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ))
            ],
          ),
        )
      ],
    );
  }

}