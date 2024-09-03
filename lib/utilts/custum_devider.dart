import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double thicknes;
  final double startIndent;
  final double endIndent;

  const CustomDivider({Key? key,
    this.color=Colors.grey,  this.thicknes=2, this.startIndent=0,  this.endIndent=20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color:color ,
      thickness: thicknes,
      indent: startIndent,
      endIndent: endIndent,
    );
  }
}
