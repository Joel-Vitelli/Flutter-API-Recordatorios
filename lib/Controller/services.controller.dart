import 'package:api_recordatorio/Model/recordatorio_lista.model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

String url = "http://francoance.pythonanywhere.com/recordatorios/";

Future<List<RecordatorioLista>> getRecordatorios() async {
  http.Response response = await http.get(
      Uri.encodeFull(url),
      headers: {
        "Accept": "application/json",
        "Authorization": "Token b4f188e9f34034d05ce82b6310819d280d5774ef"
      }
  );
}


Future loadRecordatorios() async {
  dynamic jsonRecordatorio = await getRecordatorios();
  final jsonResponse = json.decode(jsonRecordatorio);
  RecordatorioLista recordatorioLista = new RecordatorioLista.fromJson(jsonResponse);
  print(recordatorioLista.contenido[0].paciente);
}