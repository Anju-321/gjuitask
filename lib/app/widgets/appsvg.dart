import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  final String name;
  final double? width;
  final double? height;
  

  const AppSvg({
    Key? key,
    required this.name,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/$name.svg",
      width: width,
      height: height,
    
    );
  }
}