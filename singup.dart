import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("https://images.unsplash.com/photo-1529079018732-bdb88456f8c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGlja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60"))),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome !',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const Text(
                "create an Account its Free",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Email ID'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
              )
            ],
          ),
        ),
      ),
    );
  }
}