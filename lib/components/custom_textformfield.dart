import 'package:emedical/helpers/constant.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatefulWidget {
  final String? htinText;
  final InputType inputType;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormaters;
  const CustomTextFormField({
    Key? key,
    this.htinText,
    this.inputType = InputType.text,
    this.prefixIcon,
    this.inputFormaters,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.inputType == InputType.password ? _isHidden : false,
      inputFormatters: widget.inputFormaters,
      decoration: InputDecoration(
        hintText: widget.htinText,
        prefixIcon: widget.prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: widget.inputType == InputType.password
            ? GestureDetector(
                onTap: () => setState(() {
                  _isHidden = !_isHidden;
                }),
                child: Icon(
                  _isHidden ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                ),
              )
            : null,
      ),
    );
  }
}
