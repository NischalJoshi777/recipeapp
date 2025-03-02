import 'dart:io';

import 'package:flutter/material.dart';

class PlatformSpecificWidget extends StatelessWidget {
  final Widget cupertinoWidget;
  final Widget materialWidget;

  const PlatformSpecificWidget({
    super.key,
    required this.cupertinoWidget,
    required this.materialWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? _buildMaterialWidget(context)
        : _buildCupertinoWidget(context);
  }

  Widget _buildCupertinoWidget(BuildContext context) {
    return cupertinoWidget;
  }

  Widget _buildMaterialWidget(BuildContext context) {
    return materialWidget;
  }
}
