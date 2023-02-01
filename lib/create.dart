import 'package:flutter/material.dart';
import 'login.dart';
import 'my_button.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _genderList = ["ชาย", "หญิง"];
  final _ageList = ["7-10 ปี", "11-17 ปี", "18 ปีขึ้นไป", "65 ปีขึ้นไป"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            child: 
            const Align(
              alignment: Alignment.center,
              child: Text(
                "HEALJAi",
                style: TextStyle(
                  color: Color.fromRGBO(188, 170, 164, 1),
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CHERL',
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 70),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            child: Column(
              children: [
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "ชื่อ",
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
                const SizedBox(height: 15),
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
                      items: _genderList
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      hint: const Text(
                        "เพศ",
                        style: TextStyle(color: Colors.white),
                      ),
                      onChanged: (String? value) {},
                      iconEnabledColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
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
                      items: _ageList
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      hint: const Text(
                        "ช่วงอายุ",
                        style: TextStyle(color: Colors.white),
                      ),
                      onChanged: (String? value) {},
                      iconEnabledColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  children: const [
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "รหัสผ่าน",
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
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: const [
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "อธิบายถึงตัวคุณสั้นๆ",
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
                  ],
                ),
                const SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "(ใช้ในกรณีที่คุณลืมรหัสผ่าน)",
                    style: TextStyle(color: Colors.brown) ,
                  ),
                ),
                const SizedBox(height: 40),
                const CreateButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}