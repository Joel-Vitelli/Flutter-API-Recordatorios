import 'package:flutter/material.dart';


class RecordatorioCompleto extends StatelessWidget{

  int idRecordatorio;
  String descripcion;
  String fecha;
  int profesional;
  int idPaciente;
  String nombrePaciente;
  String apellidoPaciente;
  int dniPaciente;
  bool visible = true;

  RecordatorioCompleto(
      this.idRecordatorio,
      this.descripcion,
      this.fecha,
      this.profesional,
      this.idPaciente,
      this.nombrePaciente,
      this.apellidoPaciente,
      this.dniPaciente,
      );

  @override
  Widget build(BuildContext context) {

    final tituloW = Text(
      "Recordatorio N°  : ${idRecordatorio}",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20.0,
      ),
      textAlign: TextAlign.center,
    );

    final descripcionW = Column(
      children: <Widget>[
        Container(
          child: Text(
            "Descripción: ${descripcion}",
          ),
        )
      ],
    );


    final fechaW = Text(
      "Fecha: ${fecha}"
    );

    final profesionalW = Text(
        "Profesional: ${profesional}"
    );

    final idPacienteW = Text(
        "Paciente Nro: ${idPaciente}"
    );

    final nombrePacienteW = Text(
        "Nombre Paciente: ${nombrePaciente}"
    );

    final apellidoPacienteW = Text(
        "Apellido Paciente: ${apellidoPaciente}"
    );

    final dniPacienteW = Text(
        "DNI Paciente: ${dniPaciente}"
    );

    final recordatorio = Visibility(
        visible: visible,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                 boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10.0, // has the effect of softening the shadow
                      spreadRadius: 1.0, // has the effect of extending the shadow
                      offset: Offset(
                        3.0, // horizontal, move right 10
                        3.0, // vertical, move down 10
                      ),
                    )
                  ]
              ),
              height: 30,
              width: 370,
              margin: EdgeInsets.only(
                  bottom: 15.0,
                  top: 10.0
              ),
              child: Card(
                color: Colors.black12,
                child: tituloW,
              ),
            ),
            Container(
              height: 130,
              width: 380,
              margin: EdgeInsets.only(
                  bottom: 5.0
              ),
              child:
                 Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      fechaW,
                      profesionalW,
                      idPacienteW,
                      nombrePacienteW,
                      apellidoPacienteW,
                      dniPacienteW,
                      descripcionW
                    ],
                ),
              ),
            ),
          ],

        )
    );



    return recordatorio;
  }

}