import 'package:api_recordatorio/Controller/services.controller.dart';
import 'package:api_recordatorio/Model/recordatorio_lista.model.dart';
import 'package:api_recordatorio/View/simple_view.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  RecordatorioLista data = RecordatorioLista(contenido: []);

  @override
  void initState(){
    getRecordatorios().then((list) {
      setState(() {
        data = list;
      });
    });
  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Recordatorios Api"
        ),
      ),
      body: ListView.builder(
        itemCount: data.contenido.isEmpty ? 0 : data.contenido.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
              child: Column(
                children: <Widget>[
                  SimpleView(data.contenido[index].paciente.nombrePaciente),
                ],
              )
          );
        },
      ),
    );
  }
}