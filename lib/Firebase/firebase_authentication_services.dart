import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../Model/user/user_model.dart';
import '../views/Customer/customer_main_screen.dart';
import '../views/Designer/designer_main_screen.dart';

class FirebaseAuthenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel?> signUpWithEmailAndPassword({
    required String fullName,
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;

      if (user != null) {
        UserModel newUser = UserModel(
          userId: user.uid,
          fullName: fullName,
          email: email,
          role: role,
        );
        await _firestore.collection('users').doc(user.uid).set(newUser.toMap());
        return newUser;
      }
      return null;
    } catch (e) {
      print('Error in signUpWithEmailAndPassword: $e');
      return null;
    }
  }

  Future<UserModel?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;

      if (user != null) {
        DocumentSnapshot doc =
            await _firestore.collection('users').doc(user.uid).get();
        UserModel userModel =
            UserModel.fromMap(doc.data() as Map<String, dynamic>);
        if (userModel.role == "CUSTOMER") {
          Get.to(CustomerMainScreen);
        } else if (userModel.role == "DESIGNER") {
          Get.to(DesignerMainScreen);
        }

        return userModel;
      }
      return null;
    } catch (e) {
      print('Error in signInWithEmailAndPassword: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
