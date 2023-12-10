import 'package:flutter/material.dart';
import 'package:rideshare/components/colors.dart';

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = green
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.4958750,size.height*0.1398235);
    path_0.lineTo(size.width*0.0833750,size.height*0.3588235);
    path_0.lineTo(size.width*0.0792083,size.height*0.6647059);
    path_0.lineTo(size.width*0.5114583,size.height*0.8625294);
    path_0.lineTo(size.width*0.9167083,size.height*0.6629412);
    path_0.lineTo(size.width*0.9169583,size.height*0.3558824);
    path_0.lineTo(size.width*0.4958750,size.height*0.1398235);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = green
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.09
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
