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
    return Column(
      children: [
      const SizedBox(height: 10),
      Row(
        children: [
          IconButton(
            onPressed: () {
              // Navigator.of(context).pushNamed("/Login");
              Navigator.push(
                  context, MaterialPageRoute(builder: (BuildContext context){
                  return const Login();
                  }
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 24,
              color: Colors.brown,
            ),
          ),
          
        ],
      ),
      const SizedBox(height: 30),
      const Align(
        alignment: Alignment.center,
        child: Text(
          "HEALJAI",
          style: TextStyle(
            color: Color.fromRGBO(188, 170, 164, 1),
            fontSize: 64,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cheri Liney',
          ),
        ),
      ),
      const SizedBox(height: 75),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
            color: Colors.brown[200],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
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
            const SizedBox(height: 30),
            Column(
              children: [
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        ),
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
            const SizedBox(height: 30),
            Column(
              children: [
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),
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
            const SizedBox(height: 30),
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
            const SizedBox(height: 70),
            
            const CreateButton(),
          ],
        ),
      ),
    ]);
  }
}