import 'package:flutter/material.dart';

class RoundNumberButton extends StatelessWidget {
  RoundNumberButton({this.number, this.onPress, this.color = 0xFFFFF3E0});
  final Function onPress;
  final String number;
  final int color;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        number,
        style: TextStyle(fontSize: 36.0, color: Color(color)),
      ),
      constraints: BoxConstraints.tightFor(
        width: 68.0,
        height: 68.0,
      ),
      elevation: 0.0,
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(0x004C4F5E),
    );
  }
}
