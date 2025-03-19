import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Filme.dart';
import 'dart:convert';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAPP createState() => MainAPP();
}

class MainAPP extends State<MainApp> {
  List<Filme> filmes = List.empty();
  int total = 0;
  Future<void> readJson() async{
    final String response  = await rootBundle.loadString('assets/movies.json');
    Iterable data = await jsonDecode(response);
    filmes = List<Filme>.from(data.map((model)=> Filme.fromjson(model)));
    total = filmes.length;
    setState((){
      filmes;
      total;
    });
  }

   @override
   initState()  {
    super.initState();
       readJson();
   }

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('$total') ,),
      )
    );
  }
  
}

