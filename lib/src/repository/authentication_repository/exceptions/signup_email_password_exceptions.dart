class SignUpWithEmailAndPasswordException {
  final String message;

  const SignUpWithEmailAndPasswordException(
      [this.message = "An Uknown error occurred"]);

  // SPECIFIC FIREBASE AUTH EXCEPTION

  factory SignUpWithEmailAndPasswordException.code(String code) {
    switch (code) {
      case 'week-password':
        return SignUpWithEmailAndPasswordException(
            'Please enter strong password');
      case 'invalid-email':
        return SignUpWithEmailAndPasswordException(
            'Email is not valid or badly formatted');
      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordException(
            'An account already exists in that email');
      case 'operation-not-allowed':
        return SignUpWithEmailAndPasswordException(
            'Operation is not allowed. Please contact support team ');
      case 'user-disabled':
        return SignUpWithEmailAndPasswordException(
            'This user disable please. please contact support team for help');
      default:
        return SignUpWithEmailAndPasswordException('');
    }
  }

}
