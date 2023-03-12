import 'package:flutter/material.dart';



class BorderBox extends StatelessWidget {
  final double? height, width;
  final EdgeInsets? padding;
  final Widget? child;
  const BorderBox({Key? key , this.height, this.width, this.padding, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:  BoxDecoration(
        color: Colors.green[900],
        borderRadius:  BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.withAlpha(40), width: 2),
      ),
        padding: padding?? const EdgeInsets.all(8.0),
        child: Center(child: child,),
        
      
      
    );
  }
}
