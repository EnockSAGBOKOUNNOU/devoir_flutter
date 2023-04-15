import 'package:flutter/material.dart';
import '../main.dart';
import 'dart:math';


class EventPage extends StatelessWidget {
  const EventPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MainScreenLayout(),
        ),
        );
  }
}


class MainScreenLayout extends StatefulWidget {
  @override
  State<MainScreenLayout> createState() => _MainScreenLayoutState();
}



class _MainScreenLayoutState extends State<MainScreenLayout> {
    var mRandomColors = [
      Colors.red,
      Colors.purple,
      Colors.pink,
      Colors.yellow,
      Colors.blue,
      Colors.green,
      Colors.amber,
      Colors.orange,
      Colors.deepPurple,
    ];

    var defaultColor = Colors.red;
    applyRandomColor(){
      var rndColor = Random().nextInt(mRandomColors.length);
      setState(() {
        defaultColor = mRandomColors [rndColor];
      });
    }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
          Center(
            child: Container(
              margin:EdgeInsets.only(
                bottom: 50.0,
                 ), 
                 padding: EdgeInsets.all(4.0),
                 child: ElevatedButton(
                  onPressed: applyRandomColor,
                  child: Text('Change Background',
                  style: TextStyle(fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                   ),
                   ),
                   style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8.0),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(50, 15, 50, 15),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape:MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                   ),
                  
                 ),
                 )
                ,)
      ],
      ),
    );
  }
}

