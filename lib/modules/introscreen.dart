import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/styles/size_config.dart';
import 'package:test_project/styles/styleKit.dart';
import 'package:test_project/utils/constants.dart';
import 'package:test_project/utils/size_boxes.dart';
import 'package:test_project/widgets/custom_button.dart';
import 'dart:ui' as ui;

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: SizeConfig.screenHeight,
          child: Stack(

            children: [

              Container(
             height: SizeConfig.screenHeight,
               margin: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.6),
                  width: SizeConfig.screenWidth,
                decoration: const BoxDecoration(

                  image: DecorationImage(image:AssetImage(AppConstants.introImage,),)

                ),
                child: Stack(
                    alignment: Alignment.center,
                    children:[
                      Container(
                      margin: EdgeInsets.only(bottom:SizeConfig.screenWidth*0.25),

                      height: SizeConfig.screenHeight*0.11,
                      width:  SizeConfig.screenHeight*0.11,// Adjust size as needed
                  decoration: BoxDecoration(
                    color: $styles.colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                      child: Center(child:Stack(children: [

                        Positioned(

                          child:
                        CustomPaint(
                          size: Size(44, 31),
                          painter: RPSCustomPainter2(),
                        ),),
                        CustomPaint(
                          size: const Size(44, 24),
                          painter: RPSCustomPainter1(),
                        ),



    ])))
              ])),


              Container(
                  margin: EdgeInsets.only(top: SizeConfig.screenHeight * 0.1),
                  height: SizeConfig.screenHeight,
                  width: SizeConfig.screenWidth,
                  child: CustomPaint(
                    size: Size(
                        SizeConfig.screenWidth,
                        (SizeConfig.screenWidth *
                            3.1)), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(AppConstants.welcome,style: $styles.text.quickSand700_24black_30,),
                         SizedBoxHeight24,
                          Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth*0.045),child:
                          Text(AppConstants.introDescription,style: $styles.text.quickSand400_14hex888888_19,textAlign: TextAlign.center,)),
                          SizedBoxHeight24,
                         CustomButton(buttonHeight: SizeConfig.screenHeight*0.08, text: "Skip", buttonWidth: SizeConfig.screenWidth*0.4, buttonRadius: 5, verticalPadding:EdgeInsets.zero,buttonColor:$styles.colors.hexF8615A ,textStyle: $styles.text.quickSand700_14white_17,)
                        ]),
                  )),




            ],
          )),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.2503401);
    path_0.cubicTo(
        0,
        size.height * 0.1857197,
        size.width * 0.1026760,
        size.height * 0.1333333,
        size.width * 0.2293333,
        size.height * 0.1333333);
    path_0.lineTo(size.width * 0.5200000, size.height * 0.1333333);
    path_0.lineTo(size.width * 0.7040000, size.height * 0.1333333);
    path_0.lineTo(size.width * 0.8401200, size.height * 0.1333333);
    path_0.cubicTo(
        size.width * 0.9177013,
        size.height * 0.1333333,
        size.width * 0.9829680,
        size.height * 0.1036661,
        size.width * 0.9918853,
        size.height * 0.06434544);
    path_0.lineTo(size.width, size.height * 0.01857143);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.2503401);
    path_0.close();
    // Add shadow
    Paint shadowPaint = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10);
    canvas.drawPath(path_0.shift(Offset(0, 4)), shadowPaint);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    // Add shadow

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}





//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter1 extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(11,13.5);
path_0.cubicTo(8.5,3.5,1.56515,2.24434,0,0.755542);
path_0.cubicTo(12.7121,-1.19135,20.2706,-0.275166,30.4632,14.4983);
path_0.cubicTo(38.6172,26.3171,49.0541,27.7909,53.3678,27.0275);
path_0.cubicTo(51,29.5,45.5,34,34,34);
path_0.cubicTo(23.5,34,13.9134,25.1537,11,13.5);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.09090909,size.height*0.06250000), Offset(size.width*0.9545455,size.height*1.416667), [Color(0xffF8615A).withOpacity(1),Color(0xffFFD868).withOpacity(0.7)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}



//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter2 extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(48.8873,16.6743);
path_0.cubicTo(48.8873,7.51241,52.0176,2.24434,53.5828,0.755542);
path_0.cubicTo(40.8707,-1.19135,33.3122,-0.275166,23.1196,14.4983);
path_0.cubicTo(14.9656,26.3171,4.81371,25.7635,0.5,25);
path_0.cubicTo(1.53071,26.7178,6.62827,40.9532,23.1196,40.9532);
path_0.cubicTo(39.9545,40.9532,48.8873,28.1266,48.8873,16.6743);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*1.064225,size.height*-0.000001377077), Offset(size.width*0.6100364,size.height*1.321071), [Color(0xffF8615A).withOpacity(1),Color(0xffB80D57).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}


class RPSCustomPainter3 extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(11,13.5);
path_0.cubicTo(8.5,3.5,1.56515,2.24434,0,0.755542);
path_0.cubicTo(12.7121,-1.19135,20.2706,-0.275166,30.4632,14.4983);
path_0.cubicTo(38.6172,26.3171,49.0541,27.7909,53.3678,27.0275);
path_0.cubicTo(51,29.5,45.5,34,34,34);
path_0.cubicTo(23.5,34,13.9134,25.1537,11,13.5);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.09090909,size.height*0.06250000), Offset(size.width*0.9545455,size.height*1.416667), [Color(0xffF8615A).withOpacity(1),Color(0xffFFD868).withOpacity(0.7)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}