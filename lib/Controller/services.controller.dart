import 'package:api_recordatorio/Model/recordatorio.dart';
import 'package:api_recordatorio/Model/recordatorio_lista.model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

String url = "http://francoance.pythonanywhere.com/recordatorios/";

Future<RecordatorioLista> getRecordatorios() async {
  http.Response response = await http.get(
      Uri.encodeFull(url),
      headers: {
        "Accept": "application/json",
        "Authorization": "Token b4f188e9f34034d05ce82b6310819d280d5774ef"
      }
  );

  var jsonList = List.from(json.decode(response.body)['contenido']);
  RecordatorioLista recordatorisList = RecordatorioLista();
  recordatorisList.contenido = [];

  for (var rec in jsonList) {
    recordatorisList.contenido.add(Recordatorio.fromJson(rec));
  }

  return recordatorisList;


}


