import 'package:api_recordatorio/Model/paciente.dart';
import 'package:api_recordatorio/Model/recordatorio.dart';

class RecordatorioLista {
  List<Recordatorio> contenido;

  RecordatorioLista({this.contenido});


  factory RecordatorioLista.fromJson(Map<String, dynamic> parsedJson){

    var recList = parsedJson['contenido'] as List;
    List<Recordatorio> data = recList.map((i) => Recordatorio.fromJson(i)).toList();


    return RecordatorioLista(
        contenido: data
    );
  }
}