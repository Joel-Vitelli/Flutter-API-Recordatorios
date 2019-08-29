
import 'package:flutter/material.dart';


class ButtomDismiss extends StatefulWidget {
  bool visible = true;
  ButtomDismiss(this.visible);
  @override
  State<StatefulWidget> createState() {

    return _ButtomDismiss(true);
  }
}

class _ButtomDismiss extends State<ButtomDismiss> {

  bool visible = true;

  _ButtomDismiss(this.visible);

  bool onPressedFav(){
    setState(() {
      visible = false;


    });
    return visible;
  }
  @override

  Widget build(BuildContext context) {

    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Eliminar recordatorio",
        onPressed: onPressedFav,
        child: Icon(Icons.check)
    );
  }
}