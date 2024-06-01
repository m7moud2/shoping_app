import 'package:flutter/material.dart';
import 'package:shoping_app/screens/login.dart';
import 'package:shoping_app/widget/custom_elevated_button.dart';
import 'package:shoping_app/widget/custom_text_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'WELCOME',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 58,
              ),
              CustomTextFormField(
                suffixIcon: const SizedBox(),
                label: 'Name',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 35,
              ),
              CustomTextFormField(
                suffixIcon: const SizedBox(),
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 35,
              ),
              CustomTextFormField(
                  label: 'Password',
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  keyboardType: TextInputType.text),
              const SizedBox(
                height: 35,
              ),
              CustomTextFormField(
                  label: 'Confirm Password',
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  keyboardType: TextInputType.text),
              const SizedBox(
                height: 50,
              ),
              CustomElevatedButton(text: 'SIGN UP', onPressed: () {}),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Already have account?',
                    style: TextStyle(color: Color(0xff909090), fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const LogIn();
                        },
                      ));
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: const Text('SIGN IN'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
