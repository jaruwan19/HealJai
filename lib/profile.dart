import 'package:flutter/material.dart';
import 'package:bs_flutter_modal/bs_flutter_modal.dart';
import 'form/Dropdown.dart';
import './form/InputPassword.dart';
import './form/FormLabel.dart';
import './widgets/ProfileImg.dart';
import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'HealJaiAppbar.dart';
import 'login.dart';

const kSaveButton = TextStyle(fontSize: 20, color: Colors.white);
const kDeleteAccountButton = TextStyle(fontSize: 16, color: Colors.red);
final myPassword = new InputPassword();
final newPassword = new InputPassword();
final confPassword = new InputPassword();

class Profile extends StatefulWidget {
  const Profile({super.key});

  State<Profile> createState() => ProfileAppState();
}

class ProfileAppState extends State<Profile> {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: HealJaiAppbar(appbarText: 'Profile'),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                  // color: Colors.red,
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileImg(),
                      FormLabel(
                        fontsize: 16,
                        label: "Name",
                      ),
                      const SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )),
                            hintText: 'Kittiwat',
                          ),
                        ),
                      ),
                      FormLabel(
                        fontsize: 16,
                        label: "Gender",
                      ),
                      Dropdown(
                        dropdownList: const ["male", "female", "choose.."],
                      ),
                      FormLabel(
                        fontsize: 16,
                        label: "range of year",
                      ),
                      Dropdown(
                        dropdownList: const [
                          "0 - 15",
                          "16 - 20",
                          "21 - 30",
                          "31 - 40",
                          "41 - 50",
                          "choose.."
                        ],
                      ),
                      FormLabel(
                        fontsize: 18,
                        label: "Change password",
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.brown.shade200,
                                style: BorderStyle.solid)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          children: [
                            FormLabel(
                              fontsize: 16,
                              label: "your password",
                            ),
                            myPassword,
                            FormLabel(
                              fontsize: 16,
                              label: "new password",
                            ),
                            newPassword,
                            FormLabel(
                              fontsize: 16,
                              label: "confirm",
                            ),
                            confPassword,
                          ],
                        ),
                      ),
                      Container(
                        width: 500,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        margin: EdgeInsets.only(top: 20),
                        child: saveButton(),
                      ),
                      Container(
                          width: 500,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          // margin: EdgeInsets.only(top: 20),
                          child: deleteProfileButton(context)),
                    ],
                  )),
            ],
          ),
        ));
  }

  ElevatedButton saveButton() {
    return ElevatedButton(
      onPressed: () {
        // if (formKey.currentState!.validate()) {
        //   formKey.currentState!.save();
        //   print("email $email password $password");
        //   formKey.currentState!.reset();
        // }
      },
      child: const Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "save",
          style: kSaveButton,
        ),
      ),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
    );
  }

// ...
  BsButton deleteProfileButton(context) {
    return BsButton(
      style: BsButtonStyle.light,
      margin: EdgeInsets.only(right: 5.0, top: 10.0),
      prefixIcon: Icons.delete_outline_outlined,
      label: Text(
        'delete Profile',
        style: TextStyle(color: Colors.grey),
      ),
      onPressed: () => showDialog(
          context: context,
          builder: (context) => BsModal(
                context: context,
                dialog: BsModalDialog(
                  size: BsModalSize.sm,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  child: BsModalContent(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    children: [
                      BsModalContainer(
                          title: Text(
                            'คุณต้องการลบบัญชีหรือไม่',
                            style: TextStyle(fontSize: 18),
                          ),
                          closeButton: true),

                      // BsModalContainer(
                      //   child: Column(children: [Text('Content')]),
                      // ),
                      BsModalContainer(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        actions: [
                          BsButton(
                            style: BsButtonStyle.light,
                            label: Text('ยกเลิก'),
                            // prefixIcon: Icons.close,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          BsButton(
                            style: BsButtonStyle.danger,
                            label: Text('ลบบัญชี'),
                            // prefixIcon: Icons.close,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
    );
  }
// ...

  // ElevatedButton deleteProfileButton() {
  //   return ElevatedButton.icon(
  //     onPressed: viewModal,
  //     icon: const Padding(
  //         padding: const EdgeInsets.all(10.0),
  //         child: Icon(
  //           Icons.delete_outline_outlined,
  //           color: Colors.red,
  //         )),
  //     style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
  //     label: Text(
  //       'delete profile',
  //       style: TextStyle(color: Colors.red),
  //     ),
  //   );
}
