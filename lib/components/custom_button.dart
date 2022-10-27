import "package:flutter/material.dart";

class CustomButton extends StatelessWidget {
  final String buttonContent;
  final Function() action;
  const CustomButton({
    Key? key,
    required this.buttonContent,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: Text(buttonContent),
    );
  }
}
