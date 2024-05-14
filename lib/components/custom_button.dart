import 'package:app_animations/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final void Function()? onPressed;
  final String? title;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? fontColor;
  final Widget? otherwidget;

  const CustomButtom({
    super.key,
    this.onPressed,
    this.title,
    this.fontSize,
    this.backgroundColor,
    this.fontColor,
    this.otherwidget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Column(
            children: [
              CustomText(
                text: title!,
                fontSize: fontSize,
                color: fontColor ?? Colors.black,
              ),
              otherwidget ?? Container()
            ],
          ),
        ),
      ),
    );
  }
}
