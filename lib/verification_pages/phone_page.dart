import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_demo/model_class/_verification.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:project_demo/verification_pages/otp_page.dart';

class PhoneVerify extends StatefulWidget {
  const PhoneVerify({Key? key}) : super(key: key);

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  final users = Item.users();
  String dropdownvalue = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  height: 400,
                  child: Image(
                    image: AssetImage("images/phone.jpg"),
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Verify Your Phone Number",
                  style: TextStyle(
                      fontFamily: 'fonts2',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter Your Phone Number',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: DropdownButton(
                          value: users[0],
                          items: users.map((user) {
                            return DropdownMenuItem(
                              child: Row(
                                children: [
                                  Text('${user.country}'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('${user.code}'),
                                ],
                              ),
                              value: user,
                            );
                          }).toList(),
                          onChanged: (country) {
                            dropdownvalue = country.toString();
                            print("You selected: $country");
                          },
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 4,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                            hintText: 'Phone Number'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => VerifyOtp()));
                    },
                    child: Text('Send OTP')),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text('HOME')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
