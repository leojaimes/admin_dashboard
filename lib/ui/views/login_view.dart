import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/providers/login_form_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/dialogs/dialogs.dart';
 
import 'package:admin_dashboard/ui/validators/validators.dart';
import 'package:flutter/material.dart';

import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _loginFormProvider =
    ChangeNotifierProvider<LoginFormProvider>((ref) => LoginFormProvider());


    return Container(
      //margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 370),
          child: Form(
              key: context.read(_loginFormProvider).formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  // Email
                  TextFormField(
                    onChanged:context.read(_loginFormProvider).onChangeEmail,   
                    validator: Validators.validateEmail,
                    style: TextStyle(color: Colors.white),
                    decoration: CustomInputs.loginInputDecoration(
                        hint: 'Ingrese su correo',
                        label: 'Email',
                        icon: Icons.email_outlined),
                  ),

                  SizedBox(height: 20),

                  // Password
                  TextFormField(
                    onChanged:context.read(_loginFormProvider).onChangePassword,   
                    validator: Validators.validatePassword,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: CustomInputs.loginInputDecoration(
                        hint: '*********',
                        label: 'Contraseña',
                        icon: Icons.lock_outline_rounded),
                  ),

                  SizedBox(height: 20),
                  CustomOutlinedButton(
                    onPressed: () {
                        context.read(_loginFormProvider).validateForm();

                
                        context.read(authDataProvider).when(
                            data: (data) {
                              print('data ${data.id}');
                            },
                            loading:  () => CircularProgressIndicator(),
                            error: (_, __) {});

                    },
                    text: 'Ingresar',
                  ),

                  SizedBox(height: 20),
                  LinkText(
                    text: 'Nueva cuenta',
                    onPressed: () {
                       Navigator.pushNamed( context, Flurorouter.registerRoute );
                    },
                  )
                ],
              )),
        ),
      ),
    );
  }
}
