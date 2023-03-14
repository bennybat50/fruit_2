class Validation {
  String? text(value) {
    if (value.toString() == "") {
      return "Please give us your name";
    } else {
      return null;
    }
  }
}
