import 'package:cloud_firestore/cloud_firestore.dart';

class ComplainModel {
   String? complainId;
  late String email;
  late String subject;
  late String message;

  ComplainModel(
      {this.complainId,
      required this.email,
      required this.subject,
      required this.message});

  //For THE DATA STORING
  ComplainModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    complainId = documentSnapshot.id;
    email = documentSnapshot["email"];
    subject = documentSnapshot["subject"];
    message = documentSnapshot["message"];
  }
}
