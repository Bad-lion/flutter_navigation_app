import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {this.icon,
      this.onPress,
      this.color = 0x004C4F5E,
      this.iconColor = Colors.orange});
  final Function onPress;
  final IconData icon;
  final int color;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 20.0,
        color: iconColor,
      ),
      constraints: BoxConstraints.tightFor(
        width: 68.0,
        height: 68.0,
      ),
      elevation: 0.0,
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(color),
    );
  }
}
