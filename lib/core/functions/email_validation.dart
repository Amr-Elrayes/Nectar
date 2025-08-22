String? emailValidation(String? email) {
  if (email == null || email.isEmpty) {
    return "Email is required";
  }

  if (!email.contains("@")) {
    return "Email must contain '@' symbol";
  }

  final parts = email.split("@");
  if (parts.length != 2 || parts[0].isEmpty) {
    return "Email must have a valid username before '@'";
  }

  if (parts[1].isEmpty) {
    return "Email must have a domain after '@'";
  }

  if (!parts[1].contains(".")) {
    return "Domain must contain a '.' (e.g. gmail.com)";
  }

  // Extra safety check with regex
  final RegExp emailRegex = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
  );
  if (!emailRegex.hasMatch(email)) {
    return "Enter a valid email address";
  }

  return null; // ✅ Valid email
}
