// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kuch_bhi_likh_do/screen/auth/login.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  TextEditingController useridController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController resetController = TextEditingController();

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Name'),
            TextFormField(
              controller: nameController,
            ),
            const SizedBox(height: 30),
            const Text('Address'),
            TextFormField(
              controller: addressController,
            ),
            const SizedBox(height: 30),
            const Text('Email Id'),
            TextFormField(
              controller: useridController,
            ),
            const SizedBox(height: 30),
            const Text('Password'),
            TextFormField(
              controller: passwordController,
              onChanged: (value) {
                if (value.length < 8) {
                  Fluttertoast.showToast(
                      msg: "Password must be greater than 8 letter",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
              },
            ),
            const SizedBox(height: 30),
            const Text('Reset Password'),
            TextFormField(
                controller: resetController,
                onChanged: (value) {
                  if (value != passwordController) {
                    Fluttertoast.showToast(
                        msg: "Password is not match",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                }),
            const SizedBox(height: 40),
            InkWell(
              onTap: () {
                //--------------- Step 1 -------------------//

                // if (nameController.text.isEmpty ||
                //     addressController.text.isEmpty ||
                //     useridController.text.isEmpty ||
                //     passwordController.text.isEmpty ||
                //     resetController.text.isEmpty) {
                // Fluttertoast.showToast(
                //     msg: "Plase fill all fields",
                //     toastLength: Toast.LENGTH_SHORT,
                //     gravity: ToastGravity.BOTTOM,
                //     timeInSecForIosWeb: 1,
                //     backgroundColor: Colors.red,
                //     textColor: Colors.white,
                //     fontSize: 16.0);
                // }

                //--------------- Step 2 -------------------//

                if (nameController.text.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Plase fill name fields",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else if (addressController.text.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Plase fill address fields",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else if (useridController.text.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Plase fill email fields",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else if (passwordController.text.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Plase fill password fields",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else if (resetController.text.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Plase fill reset password fields",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else {
                  createUser(context);
                }
              },
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink),
                  child: const Text(
                    'Submit',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  void createUser(BuildContext context) async {
    try {
      EasyLoading.show(status: 'loading...');
      await FirebaseFirestore.instance.collection('register').add({
        'name': nameController.text,
        'address': addressController.text,
        'email': useridController.text,
        'password': passwordController.text,
        'resetpassword': resetController.text,
        "servertime": FieldValue.serverTimestamp(),
      });
      EasyLoading.dismiss();
      log('Data Sent Successfully');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    } catch (e) {
      EasyLoading.dismiss();
      log(e.toString());
    }
  }
}
