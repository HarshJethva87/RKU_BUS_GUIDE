class UserModel {
  final String? id;
  final String username;
  final String email;
  final String mobileno;
  final String password;

  UserModel(
      {this.id,
      required this.username,
      required this.email,
      required this.mobileno,
      required this.password});

  //For THE DATA STORING
  toJson() {
    return {
      "Username": username,
      "Email": email,
      "MobileNo": mobileno,
      "Password": password,
    };
  }
}
