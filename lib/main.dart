import 'package:flutter/material.dart';
import 'package:thet3o_portfolio/views/about_view.dart';
import 'package:thet3o_portfolio/views/home_view.dart';
import 'package:thet3o_portfolio/views/projects_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 2;

  final List<Widget> views = const [
    HomeView(),
    ProjectsView(),
    AboutView()
  ];

  final List<Color> selectedColors = const [
    Colors.greenAccent,
    Colors.white,
    Colors.redAccent
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      bottomNavigationBar: 
        (MediaQuery.of(context).size.width < 640)? BottomNavigationBar(
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: selectedColors[_selectedIndex],
          backgroundColor: const Color.fromARGB(255, 36, 36, 36),
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: "Projects"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "About")
          ],
        ) : null,
      body: Center(
        child: Row(
          children: [
            if(MediaQuery.of(context).size.width >= 640)
              NavigationRail(
              selectedIndex: _selectedIndex,
              groupAlignment: 0,
              backgroundColor: const Color.fromARGB(255, 36, 36, 36),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
              selectedIconTheme: IconThemeData(color: selectedColors[_selectedIndex]),
              onDestinationSelected: ((index) => {
                setState((){
                  _selectedIndex = index;
                })
              }),
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home), 
                  label: Text("Home")
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.work), 
                  label: Text("Projects")
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text("About")
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: views[_selectedIndex]
            ),
          ],
        )
      ),
    );
  }
}
