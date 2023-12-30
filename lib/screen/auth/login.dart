// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kuch_bhi_likh_do/screen/auth/register.dart';

class Login extends StatelessWidget {
  TextEditingController useridController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Email Id'),
            TextFormField(
              controller: useridController,
            ),
            const SizedBox(height: 30),
            const Text('Password'),
            TextFormField(
              controller: passwordController,
            ),
            const SizedBox(height: 40),
            Center(
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
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: const Center(
                child: Text(
                  'You don\'t have an account Register Now!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

}
