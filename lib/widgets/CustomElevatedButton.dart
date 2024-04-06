import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  final VoidCallback onPressed;
  final bool isDisabled;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.margin,
    required this.onPressed,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) return Colors.grey;
              else if (states.contains(MaterialState.pressed)) return Colors.deepPurple;
              return Colors.purple; // Default, not pressed.
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) return Colors.black26;
              return Colors.white; // Default color for text
            },
          ),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w)),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
