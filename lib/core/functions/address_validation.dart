String? addressValidation(String? address) {
  if (address == null || address.isEmpty) {
    return "Address is required";
  }

  if (address.length < 5) {
    return "Address must be at least 5 characters long";
  }

  if (address.length > 100) {
    return "Address must not exceed 100 characters";
  }

  if (!RegExp(r'[a-zA-Z]').hasMatch(address)) {
    return "Address must contain at least one letter";
  }

  if (!RegExp(r'^[a-zA-Z0-9\s,.-]+$').hasMatch(address)) {
    return "Address can only contain letters, numbers, spaces, commas, periods, and dashes";
  }

  return null;
}
