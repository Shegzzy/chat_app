import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? _user;
  User? get user => _user;

  AuthService();

  Future<bool> login(String email, password) async{
    try{
      var creds = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      if(creds.user != null) {
        _user = creds.user;
        return true;
      }
    }catch (e){
      debugPrint('Error login in $e');
    }
    return false;
  }

}