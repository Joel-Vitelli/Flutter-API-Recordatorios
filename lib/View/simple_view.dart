import 'package:flutter/material.dart';

class SimpleView extends StatelessWidget {
  String pacienteNombre = "VACIO";

  SimpleView(this.pacienteNombre);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: Text(
          pacienteNombre
        ),
      ),
    );
  }
}