import 'dart:io';

import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double? height;
  final double? width;

  /// Only for iOS.
  final Color? backgroundColor;

  const CustomCircularProgressIndicator({this.height, this.width, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 24,
      width: width ?? 24,
      child: CircularProgressIndicator.adaptive(backgroundColor: _backgroundColor),
    );
  }

  Color? get _backgroundColor {
    if (Platform.isIOS) return backgroundColor;

    return null;
  }
}
