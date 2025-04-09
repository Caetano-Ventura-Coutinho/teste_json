import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:teste_json/Filme.dart';


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
  int total = 2;
  Future<void> readJson() async{
    final String response = await rootBundle.loadString('assets/movies.json');
      Iterable data = await json.decode(response);
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
        body: Scrollbar(
          child: Center(
          child: Column(
          children:<Widget> [
            Text  (
              'Nesse arquivo temos $total filmes'
              ),
          ListView.builder
          (itemCount: filmes.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(5),
            itemBuilder: (BuildContext context, int index){
              return Card(
                color: Colors.lightBlue,
                child: Column(
                  children: <Widget>[
                   Text(filmes[index].nome),
                   Text(filmes[index].descricao),
                   Text(filmes[index].genero),
                   Text(filmes[index].diretor),
                   Image(image: NetworkImage(filmes[index].poster)),
                  ],  
                ),
              );
            },
            )
          ],
          
        )  
      )
    ), 
      ),
    );
  }
  
}

