import 'package:admin_dashboard/auth/logic/auth_provider.dart';
import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/providers/login_form_provider.dart';
import 'package:admin_dashboard/router/router.dart';

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
    final loginFormController = context.read(_loginFormProvider);
    return Container(
      //margin: EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Form(
              key: context.read(_loginFormProvider).formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  // Email
                  TextFormField(
                    onChanged: loginFormController.onChangeEmail,
                    validator: Validators.validateEmail,
                    style: const TextStyle(color: Colors.white),
                    decoration: CustomInputs.loginInputDecoration(
                        hint: 'Ingrese su correo',
                        label: 'Email',
                        icon: Icons.email_outlined),
                  ),

                  const SizedBox(height: 20),

                  // Password
                  TextFormField(
                    onChanged: loginFormController.onChangePassword,
                    validator: Validators.validatePassword,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: CustomInputs.loginInputDecoration(
                        hint: '*********',
                        label: 'Contraseña',
                        icon: Icons.lock_outline_rounded),
                  ),

                  const SizedBox(height: 20),
                  Consumer(builder: (context, wacth, child) {
                    return CustomOutlinedButton(
                      onPressed: () async {
                        await context
                            .read(signInNotifierProvider.notifier)
                            .signIn(loginFormController.email,
                                loginFormController.password);
                      },
                      text: wacth(_loginFormProvider).isValidForm
                          ? 'Ingresar'
                          : 'chuchas',
                    );
                  }),

                  Consumer(builder: (context, wacth, child) {
                    final authState = wacth(signInNotifierProvider);
                    return authState.when(
                        data: (data) => Center(
                              child: Text(
                                data.token,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                        initial: () => Container(),
                        loading: () => const CircularProgressIndicator(),
                        error: (error) => Container());
                  }),
                  const SizedBox(height: 20),
                  LinkText(
                    text: 'Nueva cuenta',
                    onPressed: () {
                      Navigator.pushNamed(context, Flurorouter.registerRoute);
                    },
                  )
                ],
              )),
        ),
      ),
    );
  }
}
