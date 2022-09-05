import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.routeFunction, required this.buttonColor, required this.text}) : super(key: key);
  final  Function() routeFunction;
  final Color buttonColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: routeFunction,
          minWidth: 200.0,
          height: 42.0,
          child:  Text(
            text,
          ),
        ),
      ),
    );
  }
}
