import 'package:admin_dashboard/providers/auth_example_provider.dart';
import 'package:admin_dashboard/features/register/logic/register_form_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/dialogs/dialogs.dart';
import 'package:admin_dashboard/ui/validators/validators.dart';

import 'package:flutter/material.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _registerProvider = ChangeNotifierProvider<RegisterFormProvider>(
        (ref) => RegisterFormProvider());

    return Container(
      margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 370),
          child: Form(
              key: context.read(_registerProvider).formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Email
                    TextFormField(
                      validator: Validators.validateName,
                      onChanged: context.read(_registerProvider).onChangeName,
                      style: TextStyle(color: Colors.white),
                      decoration: CustomInputs.loginInputDecoration(
                          hint: 'Ingrese su nombre',
                          label: 'Nombre',
                          icon: Icons.supervised_user_circle_sharp),
                    ),

                    SizedBox(height: 20),

                    // Email
                    TextFormField(
                      validator: Validators.validateName,
                      onChanged: context.read(_registerProvider).onChangeEmail,
                      style: TextStyle(color: Colors.white),
                      decoration: CustomInputs.loginInputDecoration(
                          hint: 'Ingrese su correo',
                          label: 'Email',
                          icon: Icons.email_outlined),
                    ),

                    SizedBox(height: 20),

                    // Password
                    TextFormField(
                      validator: Validators.validatePassword,
                      onChanged:
                          context.read(_registerProvider).onChangePassword,
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
                       
                      },
                      text: 'Crear cuenta',
                    ),

                    SizedBox(height: 20),
                    LinkText(
                      text: 'Ir al login',
                      onPressed: () {
                        Navigator.pushNamed(context, Flurorouter.loginRoute);
                      },
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
