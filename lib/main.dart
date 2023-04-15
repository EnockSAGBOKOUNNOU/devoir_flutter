import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/event_page.dart';
import 'pages/add_event_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp ({Key? key}) : super(key: key) ;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("Accueil"),
            Text("Couleurs"),
            Text("Formulaire")
          ][_currentIndex],
        ),
      body:[ 
           HomePage(),
           EventPage(),
           AddEventPage(),
           ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 32,
          elevation: 13,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Acceuil'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'paramètre'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Formulaire'
            ),
          ],
          )
      ),
    );
  }
}
