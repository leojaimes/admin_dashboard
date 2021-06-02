class Validators {


   static String? validateName(String? value) {
    if (value == null || value.isEmpty) return 'Ingrese su nombre';
    if (value.length < 2 )
      return 'El nombre debe contener al menos 2 caracteres';

    return null;
  }



  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Ingrese su contraseña';
    if (value.length < 6)
      return 'La contraseña debe ser al menos de 6 caracteres';

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Ingrese su contraseña';
    if (value.length < 6)
      return 'La contraseña debe ser al menos de 6 caracteres';

    return null;
  }
}