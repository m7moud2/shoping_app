import 'package:flutter/material.dart';
import 'package:shoping_app/screens/sign_up.dart';
import 'package:shoping_app/widget/custom_elevated_button.dart';
import 'package:shoping_app/widget/custom_text_form_field.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello!',
                  style: TextStyle(
                      color: Color(0xff909090),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'WELCOME BACK',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 58,
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
              const Text(
                'Forgot Password',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomElevatedButton(
                text: 'Loh in',
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const SignUp();
                    },
                  ));
                },
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
