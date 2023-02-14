import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          // border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/index");
        },
        child: const Padding(
          // padding: const EdgeInsets.all(15),
          padding:
              const EdgeInsets.only(left: 110, right: 110, top: 15, bottom: 15),
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
      )

          // child: Text(
          //   "Login",
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 32,
          //   ),
          // ),

          ),
    );
  }
}

class CreateButton extends StatelessWidget {
  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: const Center(
        child: Text(
          "Create",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
