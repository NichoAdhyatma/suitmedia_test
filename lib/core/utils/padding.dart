import 'package:flutter/material.dart';

extension SizeExtension on num {
  Widget get widthBox => SizedBox(width: toDouble());

  Widget get heightBox => SizedBox(height: toDouble());

  Widget get squareBox => SizedBox(width: toDouble(), height: toDouble());
}