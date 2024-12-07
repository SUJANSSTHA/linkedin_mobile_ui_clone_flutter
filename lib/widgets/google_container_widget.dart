import 'package:flutter/material.dart';
import 'package:linkedin_mobile_ui_clone_flutter/theme/style.dart';

class GoogleButtonContainerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final VoidCallback? onTap;
  final bool? hasIcon;
  final Widget? icon;
  const GoogleButtonContainerWidget({super.key, this.width, this.height, required this.title, this.onTap, this.hasIcon, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: hasIcon == true? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon!,
              const SizedBox(width: 5,),
              Text(title, style: const TextStyle(color: linkedInBlack000000, fontWeight: FontWeight.bold),),
            ],
          ) : Text(title, style: const TextStyle(color: linkedInBlack000000, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}