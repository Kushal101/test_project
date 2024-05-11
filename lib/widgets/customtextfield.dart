import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/styleKit.dart';




class CustomTextField1 extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final bool readOnly;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? Function()? onEditingComplete;
  final String? Function(String?)? onFieldSubmitted;
  final void Function()? onTap;
  final bool enabled;
  final Widget? suffixIcon;
  final String? initialValue;
  final Widget? prefixIcon;
  final bool? isFilled;
  final FocusNode? focusNode;
  final TextCapitalization textCapitalization;
  final int? maxLength;
  final bool autoFocus;
  final TextAlign align;
  final bool isDense;
  final double? cursorHeight;
  final EdgeInsets padding;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField1({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.readOnly = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.isDense = false,
    this.onTap,
    this.enabled = true,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.cursorHeight,
    this.suffixIcon,
    this.initialValue,
    this.prefixIcon,
    this.isFilled,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
    this.autoFocus = false,
    this.align = TextAlign.start,
    this.padding = EdgeInsets.zero,
    this.inputFormatters
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        // scrollPadding: EdgeInsets.only(bottom: 40),
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        inputFormatters: inputFormatters,
        autofocus: autoFocus,
        keyboardAppearance: Brightness.light,
        maxLength: maxLength,
        textAlign: align,
        textCapitalization: textCapitalization,
        focusNode: focusNode,
        readOnly: readOnly,
        cursorColor: $styles.colors.hexF8615A,
        initialValue: initialValue,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        enabled: enabled,
        onTap: onTap,
        cursorHeight: cursorHeight,
       style: $styles.text.quickSand400_14hex343434_12,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          isDense: isDense,
          contentPadding: padding,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,

          focusColor: $styles.colors.hexF8615A,
          labelStyle: $styles.text.quickSand400_14hex343434_12,
          filled: isFilled,
          labelText: labelText,


          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:$styles.colors.hexF8615A),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color:$styles.colors.hexE8E8E8),
          ),

        ),
      );
    }
  }

