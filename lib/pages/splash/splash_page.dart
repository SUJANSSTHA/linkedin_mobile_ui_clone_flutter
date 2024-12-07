// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// import 'package:linkedin_mobile_ui_clone_flutter/pages/main/main_page/main_page.dart';
import 'package:linkedin_mobile_ui_clone_flutter/theme/style.dart';

class SplashPage extends StatefulWidget {
  final Widget child;
  const SplashPage({
    super.key,
    required this.child,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {
Future.delayed(const Duration (seconds: 3)).then((value){
// ignore: use_build_context_synchronously
Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
  builder: (_)=>widget.child),(route)=>false,);
});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linkedInWhiteFFFFFF,
      body: Center(child: Image.asset("assets/app_logo.png")),
    );
  }
}