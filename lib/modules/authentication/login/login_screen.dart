import 'package:book_app/modules/authentication/register/register_screen.dart';
import 'package:book_app/utils/components/constants.dart';
import 'package:book_app/utils/components/shared/default_button.dart';
import 'package:book_app/utils/components/shared/default_form_field.dart';
import 'package:book_app/utils/components/shared/default_text_button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 48.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: Column(
                  children: [
                    const DefaultFormField(
                      hint: 'Email',
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
                    DefaultButton(
                      buttonTitle: 'LOGIN',
                      onTap: () {
                        print('Login hasBeenTapped');
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                        DefaultTextButton(
                          color: Colors.blue,
                          title: 'Register',
                          onTap: (){
                            navigateTo(context: context, widget: const RegisterScreen());
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
