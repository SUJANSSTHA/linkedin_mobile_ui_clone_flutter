import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin_mobile_ui_clone_flutter/pages/auth/sign_up_page.dart';
import 'package:linkedin_mobile_ui_clone_flutter/theme/style.dart';
import 'package:linkedin_mobile_ui_clone_flutter/widgets/button_container_widget.dart';
import 'package:linkedin_mobile_ui_clone_flutter/widgets/google_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                    "Sign In",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Stay updated on your professional world",
                    style: TextStyle(
                      fontSize: 16.0,
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
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: linkedInBlue0077B5,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonContainerWidget(
                    title: "Sign IN",
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => const MainPage()),
                          (route) => false);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 1,
                        color: linkedInMediumGrey86888A,
                      )),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("or"),
                      ),
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 1,
                        color: linkedInMediumGrey86888A,
                      ))
                    ],
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
                          text: "New to LinkedIn?",
                          style:const TextStyle(
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
                                          builder: (_) => const SignUpPage()),
                                      (route) => false);
                                },
                              text: "Join Now",
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
