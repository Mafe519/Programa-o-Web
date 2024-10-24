import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/user/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //classe de dados
  UserModel? userModel;

  //método para criar o suario no Firebase

  signUp(UserModel userModel){
    _auth.createUserWithEmailAndPassword(email: userModel.email!, password: userModel.password!);
    this.userModel = userModel;
    //salvando dados do usuario
    save();
  }
  //método para salvar os dados no FIREBASE
  save(){
    _firestore.collection('users').add(userModel!.toMap());
  }
}