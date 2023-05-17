import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rku_bus_guide/src/features/core/models/complain_model.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class FirestoreDb {
  static addComplain(ComplainModel complainModel) async {
    await firebaseFirestore
        .collection('Complain')
        .add({
    'email' : complainModel.email,
    'subject' :complainModel.subject,
    'message' :complainModel.message, 
    });
  }

    static Stream<List<ComplainModel>> todoStream() {
    return firebaseFirestore
        .collection('Complain')
        // .doc()
        // .collection('complains')
        .snapshots()
        .map((QuerySnapshot query) {
      List<ComplainModel> Complain = [];
      for (var cm in query.docs) {
        final complainModel =
            ComplainModel.fromDocumentSnapshot(documentSnapshot: cm);
        Complain.add(complainModel);
      }
      return Complain;
    });
  }
}
