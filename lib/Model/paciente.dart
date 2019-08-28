class Paciente {
  int idPaciente;
  String nombrePaciente;
  String apellidoPaciente;
  int dniPaciente;

  Paciente({
    this.idPaciente,
    this.nombrePaciente,
    this.apellidoPaciente,
    this.dniPaciente});

  factory Paciente.fromJson(Map<String, dynamic> parsedJson){
    return Paciente(
      idPaciente: parsedJson['idPaciente'],
      nombrePaciente : parsedJson['nombrePaciente'],
      apellidoPaciente : parsedJson['apellidoPaciente'],
      dniPaciente : parsedJson['dniPaciente'],
    );
  }
}