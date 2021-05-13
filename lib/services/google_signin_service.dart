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
      final GoogleSignInAccount account = await _googleSignIn.signIn();
      print(account);
      // TODO: toca generar un token para autentificarse en el backend y evitar que alguien que conozca endpoint genere usuario
      return account;
    } catch (error) {
      print('Error en Google SignIn');
      print(error);
      return null;
    }
  }

  static Future signOut() async {
    await _googleSignIn.signOut();
  }
}
