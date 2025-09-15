import 'package:flutter/material.dart';

getRFStyle({double? fontSize, Color? color}) {
  return TextStyle(
    color: color ?? Colors.black,
    fontSize: fontSize ?? 16,
    fontWeight: FontWeight.w400,
  );
}

getMFStyle({double? fontSize, Color? color}) {
  return TextStyle(
    color: color ?? Colors.black,
    fontSize: fontSize ?? 16,
    fontWeight: FontWeight.w500,
  );
}

getBFStyle({double? fontSize, Color? color}) {
  return TextStyle(
    color: color ?? Colors.black,
    fontSize: fontSize ?? 16,
    fontWeight: FontWeight.w700,
  );
}

getEBFStyle({double? fontSize, Color? color}) {
  return TextStyle(
    color: color ?? Colors.black,
    fontSize: fontSize ?? 16,
    fontWeight: FontWeight.w900,
  );
}
