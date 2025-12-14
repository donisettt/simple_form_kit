class Validators {
  static String? required(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field ini wajib diisi';
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email wajib diisi';
    }

    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) {
      return 'Format email tidak valid';
    }
    return null;
  }
}
