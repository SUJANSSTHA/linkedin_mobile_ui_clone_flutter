import 'package:flutter/material.dart';
import 'package:linkedin_mobile_ui_clone_flutter/theme/style.dart';

class ButtonContainerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final VoidCallback? onTap;
  final bool? hasIcon;
  final String title;
  final IconData? icon;
  const ButtonContainerWidget({super.key, this.width=double.infinity, this.height = 40, this.onTap, this.hasIcon = false, required this.title, this.icon});

  @override
    Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 45,
        decoration: BoxDecoration(
          color: linkedInBlue0077B5,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 3),
              spreadRadius: 0.5,
              blurRadius: 4.5,
              color: linkedInLightGreyCACCCE
            )
          ]
        ),
        child: Center(
          child: hasIcon == true? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: const TextStyle(color: linkedInWhiteFFFFFF, fontWeight: FontWeight.bold),),
              const SizedBox(width: 5,),
              Icon(icon, color: linkedInWhiteFFFFFF, size: 15,),
            ],
          ) : Text(title, style: const TextStyle(color: linkedInWhiteFFFFFF, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}