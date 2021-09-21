import 'package:flutter/material.dart'
    show BuildContext, Container, StatelessWidget, Widget;
import 'dart:io';

abstract class PlatformWidget extends StatelessWidget {
  Widget buildCupertinoWidget(BuildContext context);
  Widget buildMaterialWidget(BuildContext context);
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildCupertinoWidget(context);
    }
    return Container();
  }
}
