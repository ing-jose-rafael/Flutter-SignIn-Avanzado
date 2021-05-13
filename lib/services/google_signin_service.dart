import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService {
  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      //'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  static Future<GoogleSignInAccount> signInWithGoogle() async {
    try {
      final GoogleSignInAccount acount = await _googleSignIn.signIn();
      print(acount);
      return acount;
    } catch (error) {
      print('Error en Google SignIn');
      print(error);
      return null;
    }
  }
}
