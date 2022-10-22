import "package:flutter/material.dart";

class CustomButton extends StatelessWidget {
  final String buttonContent;
  const CustomButton({
    Key? key,
    required this.buttonContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(buttonContent),
    );
  }
}
