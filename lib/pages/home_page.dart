import 'package:flutter/material.dart';
import 'event_page.dart';
import '../main.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" projet"),
        ),
        body:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [ 


            Image.asset("assets/images/enock.jpg"),
           const Text(
              "Je suis SAGBO KOUNNOU Y. Enock",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          const  Text("Etudiant en licence 3 à ESGIS ",
            style: TextStyle(fontSize: 12
            ),
            textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () => print(" click sur le bouton"),
              child: Text("Aficher le planning"),
            )
          ],
        )
        )
        );
  }
}
