import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:rideshare/models/usermodel.dart';

class Userprovider extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationid = "";
  UserCredential? signin;
  bool verify = false;
  bool verifylogin = false;

  MyUser _user = MyUser();

  MyUser get user => _user;

  void setUser(var newname, var newemail, var newphone, {String? newpassword}) {
    _user.eamil = newemail;
    _user.firstName = newname;
    _user.phone = newphone;
    _user.password = newpassword;

    notifyListeners();
  }

  void verifyphonenummber(
    String phone,
  ) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
        print('The provided phone number is  valid.');
      },
      timeout: const Duration(seconds: 60),
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        verificationid = verificationId;
        notifyListeners();
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyotp(String otp) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationid!, smsCode: otp);
    signin = await auth.signInWithCredential(credential);
    final user = signin!.user;

    notifyListeners();
  }

  Future<UserCredential?> updatefirebaseuser() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _user.eamil,
        password: _user.password,
      );
      verify = true;
      notifyListeners();
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

Future<UserCredential?> signinuser(String email,String password)async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code != null) {
        print(e);
        return null;
      } else if (e.code != null) {
        print(e);
        return null;
      }
    } catch (e) {
      print(e);
    }

    return null;
     
  }


  void currentuser() {
    auth.authStateChanges().listen((User?user) {
      if (user == null) {
        verifylogin = false;
        notifyListeners();
      print('User is currently signed out!');
    } else {
      verifylogin = true;
      notifyListeners();
      print('User is signed in!');
    }
     });
  
  }

  notifyListeners();
}
