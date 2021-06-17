import 'package:admin_dashboard/features/validate_token/logic/validate_token_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Widget isAuthWidget(BuildContext context, Widget login, Widget nologin) {
  return Consumer(builder: (_, wacth, __) {
    final authState = wacth(validateTokenNotifierProvider);
    return authState.maybeWhen(orElse: () {
      return Container();
    }, isValid: (isValid) {
      if (isValid) {
        return login;
      } else {
        return nologin;
      }
    });
  });
}
