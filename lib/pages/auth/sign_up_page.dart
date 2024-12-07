import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_mobile_ui_clone_flutter/pages/auth/sign_in_page.dart';
import 'package:linkedin_mobile_ui_clone_flutter/theme/style.dart';
import 'package:linkedin_mobile_ui_clone_flutter/widgets/button_container_widget.dart';
import 'package:linkedin_mobile_ui_clone_flutter/widgets/google_container_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isContinued = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
              ),
              child: SvgPicture.asset(
                "assets/app_logo_svg.svg",
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Join LInkedIn",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Email or Phone",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _isContinued == true
                      ? TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Password"),
                        )
                      : ButtonContainerWidget(
                          title: "Continue",
                          onTap: () {
                           if(_isContinued==false){
                            setState(() {
                              _isContinued = true;
                            });
                            return;
                           }
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const MainPage()),
                                (route) => false);
                          },
                        ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GoogleButtonContainerWidget(
                    title: "Sign In with Google",
                    hasIcon: true,
                    icon: SvgPicture.asset(
                      "assets/google_logo_svg.svg",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GoogleButtonContainerWidget(
                    title: "Sign In with Apple",
                    hasIcon: true,
                    icon: SvgPicture.asset(
                      "assets/apple-black-logo-svgrepo-com.svg",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GoogleButtonContainerWidget(
                    title: "Sign In with Facebook",
                    hasIcon: true,
                    icon: SvgPicture.asset(
                      "assets/facebook-3-logo-svgrepo-com.svg",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: "Already on LinkedIn?",
                          style: const TextStyle(
                            color: linkedInBlack000000,
                            fontSize: 16.0,
                          ),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const SignInPage()),
                                      (route) => false);
                                },
                              text: "Sign In",
                              style: const TextStyle(
                                  color: linkedInBlue0077B5,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
