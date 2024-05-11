import 'package:flutter/material.dart';
import '../styles/styleKit.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
        required this.buttonHeight,
        required this.text,
        this.onTap,
        required this.buttonWidth,
        this.textStyle,
        this.isLoading = false,
        required this.buttonRadius,
        this.borderColor,
        required this.verticalPadding,
        this.buttonColor});

  final String text;

  final void Function()? onTap;
  final TextStyle? textStyle;
  final bool isLoading;
  final Color? buttonColor;
  final Color? borderColor;
  final double buttonRadius;
  final double buttonWidth;
  final double buttonHeight;
  final EdgeInsets verticalPadding;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        child: Container(
            height: widget.buttonHeight,
            width: widget.buttonWidth,
            padding: widget.verticalPadding, //change var name
            decoration: BoxDecoration(
              color: widget.buttonColor,
              border: Border.all(color: widget.borderColor ?? $styles.colors.transparent),
              borderRadius: BorderRadius.circular(widget.buttonRadius),
            ),
            child: Center(
              child: Text(widget.text, style: widget.textStyle),
            )),
      );
  }
}
