// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './../my_button.dart';
// import './../HealJaiAppbar.dart';
import './../login.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPassword> {
  bool passenable = true;
  bool showPass = true;
  List<String> ansList = [
    'ans1',
    'ans2',
    'ans3',
    'ans4',
    'ans5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // Navigator.of(context).pushNamed("/Login");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const Login();
                }),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 24,
              color: Colors.brown,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: const Text(
                "HEALJAi",
                style: TextStyle(
                  color: Color.fromRGBO(188, 170, 164, 1),
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CHERL',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot Your Password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "การอธิบายเกี่ยวกับตัวคุณ จะใช้เพื่อยืนการเข้าสู่ระบบในกรณีที่คุณลืมรหัสผ่าน",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: [
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        items: ansList
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        hint: const Text(
                          "เลือกคำตอบของคุณ",
                          style: TextStyle(color: Colors.white),
                        ),
                        onChanged: (String? value) {},
                        iconEnabledColor: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 80),
                  const LoginButton(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ));
  }
}
