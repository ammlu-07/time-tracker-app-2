import 'package:flutter/material.dart';

class CustomRaisedButton  extends StatelessWidget {
   CustomRaisedButton({
    required this.color,
    required this.child,
    this.borderRadius:8.00,
    required this.onPressed,
  });
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child:child,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
