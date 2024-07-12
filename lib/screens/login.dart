// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final _formKey = GlobalKey<FormState>();

class _LoginState extends State<Login> {
  bool IsChek = false;
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff203051),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(fontFamily: 'elsayed_1', fontSize: 23),
                      ),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Color(0xff9B9B9B),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  hintText: 'User name',
                                  hintStyle: TextStyle(fontFamily: "elsayed_1"),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter user name';
                                  }
                                  // if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                  //   return 'Please enter a valid email address';
                                  // }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                // style: TextStyle(fontFamily: 'elsayed_1'),
                                obscureText: showPass,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xff9B9B9B),
                                  ),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (showPass == true) {
                                            showPass = false;
                                          } else {
                                            showPass = true;
                                          }
                                        });
                                      },
                                      icon: Icon(
                                      showPass == true ?  Icons.remove_red_eye : Icons.visibility_off,
                                        color: Color(0xff9B9B9B),
                                      )),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(fontFamily: "elsayed_1"),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Password';
                                  }
                                  // if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                  //   return 'Please enter a valid email address';
                                  // }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  Text("New to quiz app ?",
                                      style:
                                          TextStyle(fontFamily: "elsayed_1")),
                                  Text(
                                    "  Register ",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Container(
                                  margin: EdgeInsets.only(left: 90),
                                  width: 200,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {

                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Home(),));
                                      }
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "elsayed_1"),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: SizedBox(
                                  width: 60,
                                  child: Image.asset(
                                      "assets/photos/fingerprint.png"),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Use Touch ID ",
                                  style: TextStyle(fontFamily: 'elsayed_1'),
                                ),
                              ),
                              SizedBox(
                                height: 130,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: Colors.green,
                                    value: IsChek,
                                    onChanged: (value) {
                                      setState(() {
                                        IsChek = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Remember me",
                                    style: TextStyle(fontFamily: 'elsayed_1'),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Forget Password ?",
                                    style: TextStyle(
                                        fontFamily: 'elsayed_1',
                                        color: Colors.green),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
