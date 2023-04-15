import 'package:flutter/material.dart';
import '../main.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {

    final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

 String au;
 String mp;

    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Login',
                hintText: 'Veillez Entrez votre Login',
                border: OutlineInputBorder()
              ),
              validator: (value){
                

                if (value == null || value.isEmpty){
                  return " veillez complètez toutes les champs du formulaire";
                }
                
                au = value;
                return null;
              },
            ),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                hintText: 'Veillez Entrez votre Mot de passe',
                border: OutlineInputBorder()
              ),
              
                validator: (value){
                  

                if (value == null || value.isEmpty){
                  return " veillez complètez toutes les champs du formulaire";
                }
                
                mp = value;
                return null;
              },


            ),
            ElevatedButton(
              onPressed: (){
                if(_formkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("votre mot de passe et votre login sont:" ))
                  );
                }
              }, 
              child: Text("Envoyer")
              )
          ]
          ,)
        ),
    );
  }
}