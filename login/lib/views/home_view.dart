import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/ButtonWidget.dart';
import '../widget/textFieldWidget.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[850],
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textFieldWidget(
              hintText: 'Email',
              obscureText: false,
              prefixIconData: Icons.mail_outline,
            ),
            SizedBox(
              height: 10,
            ),
            textFieldWidget(
              hintText: 'Password',
              prefixIconData: Icons.lock_outline,
              obscureText: true,
              sufixIconData: hommodel.isVisible ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Forget Password !",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(
              title: "Login",
              hasBorder: false,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
              title: "Sign Up",
              hasBorder: true,
            ),
          ],
        ),
      ),
    );
  }
}
