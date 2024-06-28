
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/shared/theme/dimens.dart';

class AppHorizontalDivider extends StatelessWidget {

  final double thickness;
  final double? indent;
  final double? endIndent;

  const AppHorizontalDivider({
    super.key, 
    this.thickness = AppDimens.quaternaryDividerSize,
    this.indent,
    this.endIndent
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: thickness,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}

class AppVerticalDivider extends StatelessWidget {

  final double thickness;
  final double? indent;
  final double? endIndent;

  const AppVerticalDivider({
    super.key, 
    this.thickness = AppDimens.quaternaryDividerSize,
    this.indent,
    this.endIndent
  });

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      width: thickness,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}