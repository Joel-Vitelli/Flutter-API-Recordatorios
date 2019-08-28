import 'package:api_recordatorio/Model/paciente.dart';

class Recordatorio {
  int idRecordatorio;
  Paciente paciente;
  String descripcion;
  String fecha;
  int profesional;

  Recordatorio({
    this.idRecordatorio,
    this.paciente,
    this.descripcion,
    this.fecha,
    this.profesional});

  factory Recordatorio.fromJson(Map<String, dynamic> parsedJson){

    return Recordatorio(
        idRecordatorio: parsedJson['idRecordatorio'],
        paciente: Paciente.fromJson(parsedJson['paciente']),
        descripcion: parsedJson['descripcion'],
        fecha: parsedJson['fecha'],
        profesional: parsedJson['profesional']

    );
  }
}