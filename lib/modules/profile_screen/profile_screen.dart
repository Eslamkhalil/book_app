
import 'package:book_app/utils/components/constants.dart';
import 'package:book_app/utils/components/shared/circle_avatar.dart';
import 'package:book_app/utils/components/shared/default_button.dart';
import 'package:book_app/utils/components/shared/default_form_field.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
   UserProfile({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
   final nameController = TextEditingController();
   final phoneController = TextEditingController();
   final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:formKey ,
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            shrinkWrap: true,
            children:  [

              const CircularImage(
                imageRadius: 70.0,
                imageProvider: NetworkImage(
                  'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTE5NTU2MzE2NjUyOTk2MTA3/9th-annual-ves-awards---red-carpet.jpg',
                ),
              ),
              DefaultFormField(
                controller: nameController,
                hint: 'name',
                preIcon: Icons.person,
                isPassword: false,
              ),
              const SizedBox(
                height: 20.0,
              ),
              DefaultFormField(
                controller: phoneController,
                hint: 'phone',
                preIcon: Icons.phone,
                isPassword: false,
              ),
              const SizedBox(
                height: 20.0,
              ),
              DefaultFormField(
                controller: emailController,
                hint: 'email',
                preIcon: Icons.email,
                isPassword: false,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 16.0,
                  children: [
                    Chip(
                      label: Text('love story'),
                      backgroundColor: Colors.black.withOpacity(0.2),

                    ),
                    Chip(
                      label: Text('Fantsy'),
                      backgroundColor: Colors.black.withOpacity(0.2),


                    ),
                    Chip(
                      label: Text('codeing and programing'),
                      backgroundColor: Colors.black.withOpacity(0.2),

                    ),
                    Chip(
                      label: Text('Horror'),
                      backgroundColor: Colors.black.withOpacity(0.2),

                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              DefaultButton(
                  buttonTitle: 'LOGOUT',
                  onTap: () {
                    logOut(context);
                  }),

            ],
          ),
        ),),
      ),
    );
  }
}
