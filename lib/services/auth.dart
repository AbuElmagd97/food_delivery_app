import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

Future<void> signInWithGoogle()async {
  await Firebase.initializeApp();
  final GoogleSignInAccount googleSignInAccount =
  await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
  await googleSignInAccount.authentication;
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
 UserCredential userCredential=await _auth.signInWithCredential(credential);
 User user = userCredential.user;
 print(user.email);
}
Future<void> signOut()async{
  await _googleSignIn.signOut();
}