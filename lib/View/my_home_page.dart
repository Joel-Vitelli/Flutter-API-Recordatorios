import 'package:api_recordatorio/Controller/services.controller.dart';
import 'package:api_recordatorio/Model/recordatorio_lista.model.dart';
import 'package:api_recordatorio/View/recordatorio_completo.dart';

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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
            "Recordatorios Api"
        ),
      ),
      body: ListView.builder(
        itemCount: data.contenido.isEmpty ? 0 : data.contenido.length,
        itemBuilder: (context, index){
          return Dismissible(
              key: Key((data.contenido[0].idRecordatorio + data.contenido.length).toString()),
              background: Container(color: Colors.deepPurple),
              secondaryBackground: Container(color : Colors.greenAccent),
              onDismissed: (direction) {
                setState(() {
                  data.contenido.removeAt(index);
                });
                Scaffold
                    .of(context)
                    .showSnackBar(SnackBar(content: Text("Recordatorio eliminado")));
              },
              child: Card(
                  child: Column(
                    children: <Widget>[
                      RecordatorioCompleto(data.contenido[index].idRecordatorio,data.contenido[index].descripcion,data.contenido[index].fecha, data.contenido[index].profesional, data.contenido[index].paciente.idPaciente, data.contenido[index].paciente.nombrePaciente, data.contenido[index].paciente.apellidoPaciente, data.contenido[index].paciente.dniPaciente)
                    ],
                  )
              )
          );
        },
      ),
    );
  }
}