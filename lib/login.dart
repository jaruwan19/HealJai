import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'my_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 30),
          alignment: Alignment.center,
          child: const Text(
            "HEALJAI",
            style: TextStyle(
              color: Color.fromRGBO(188, 170, 164, 1),
              fontSize: 64,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cheri Liney',
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              color: Colors.brown[200],
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: const [
                  TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: null,
                      child: Text("Forgot Password?"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70),

              const LoginButton(),

              const SizedBox(height: 10),

              RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    const TextSpan(
                      text: "Don't have an account ?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: " Create",
                      style: const TextStyle(
                        color: Colors.brown,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                        Navigator.of(context).pushNamed("/create");
                      },
                    ),
                  ]
                )
              ),
            ],
          ),
        ),
      ],
    );
  }
}

