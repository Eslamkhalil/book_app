
import 'package:book_app/modules/authentication/login/login_screen.dart';
import 'package:book_app/utils/components/constants.dart';
import 'package:book_app/utils/components/shared/default_button.dart';
import 'package:book_app/utils/components/shared/default_form_field.dart';
import 'package:book_app/utils/components/shared/default_text_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20.0),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Singup',
                    style: TextStyle(
                      fontSize: 48.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const DefaultFormField(
                    hint: 'Name',
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const DefaultFormField(
                    hint: 'Email',
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const DefaultFormField(
                    hint: 'Phone',
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const DefaultFormField(
                    hint: 'Password',
                    isPassword: true,
                    sufIcon: Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.platform,
                      title: const Text(
                          'by checking you agree to the terms and conditions'),
                      value: rememberMe,
                      onChanged: (newValue) {
                        setState(() {
                          rememberMe = newValue!;
                        });
                      }),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const DefaultButton(
                    buttonTitle: 'SING UP',
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Center(
                   child: DefaultTextButton(color: Colors.blue,
                    onTap: (){
                      navigateTo(context: context, widget: const Login());
                    },
                    title: 'Back To Login',),
                 ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
