

class Validation{



  static String? emptyNullValidator(
      String? value, {
        String? errorMessage,
      }) {
    if (value?.trim().isEmpty ?? true) return errorMessage;

    return null;
  }

  static String ? passwordValidator( String? value, {
    String? errorMessage,
  }){
    final password = value?.replaceAll(' ', '') ?? '';

    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

    if (password.isEmpty) {
      return 'Password is required';
    } else if (!passwordRegex.hasMatch(password)) {
      return 'Password must be at least 8 characters,\ninclude upper/lowercase, number and symbol';
    }
    return null;
  }


  static String ? emailValidation(String ? value, {
    String? errorMessage,
  }){
    if (value == null || value.isEmpty) {
      return "Email is required";
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "Enter a valid email";
    }
    return null;
  }



}