import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:study_app/firebase_ref/references.dart';
import 'package:study_app/routes/routes.dart';

class AuthController extends GetxController {
  late FirebaseAuth _auth;
  final _user = Rxn<User>();
  late Stream<User?> _authStateChanges;

  @override
  void onReady() {
    // TODO: implement onReady
    initAuth();
    super.onReady();
  }

  Future<void> initAuth() async {
    await Future.delayed(const Duration(seconds: 2));
    _auth = FirebaseAuth.instance;
    _authStateChanges = _auth.authStateChanges();
    _authStateChanges.listen((User? user) {
      _user.value = user;
    });
    navigateToIntroduction();
  }
  
  signInWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      GoogleSignInAccount? account = await _googleSignIn.signIn();
      if(account != null) {
        final _authAccount = await account.authentication;
        final _credential = GoogleAuthProvider.credential(
          idToken: _authAccount.idToken,
          accessToken: _authAccount.accessToken,
        );

        await _auth.signInWithCredential(_credential);
        await saveUser(account);
      }
    } catch(e) {
      print("Exception in auth_controller: $e");
    }
  }

  saveUser(GoogleSignInAccount account) {
    userRF.doc(account.email).set({
      'email': account.email,
      "name": account.displayName,
      "profilePic": account.photoUrl,
    });
  }

  void navigateToIntroduction() {
    Get.offAllNamed(AppRoutes.INTRODUCTION);
  }
}