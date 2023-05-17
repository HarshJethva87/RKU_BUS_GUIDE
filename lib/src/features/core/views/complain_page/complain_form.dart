import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';
import 'package:rku_bus_guide/src/features/authentication/controllers/login_page_controller.dart';
import 'package:rku_bus_guide/src/features/authentication/views/forgot_password/forgot_password.dart';
import 'package:rku_bus_guide/src/features/core/controllers/complain_controller.dart';
import 'package:rku_bus_guide/src/features/core/models/complain_model.dart';
import 'package:rku_bus_guide/src/features/core/views/complain_page/complain_class.dart';

class ComplainForm extends StatelessWidget {
  const ComplainForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final complainController = Get.put(ComplainController());

    final emailTextEditorController = TextEditingController();
    final subjectTextEditorController = TextEditingController();
    final messageTextEditorController = TextEditingController();
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Form(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 30.0,
        ),
        TextFormField(
          controller: emailTextEditorController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email_outlined),
            labelText: MyUserEmailLable,
            hintText: MyUserEmail,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        TextFormField(
          keyboardType: TextInputType.multiline,
          minLines: 1,
          maxLines: 4,
          controller: subjectTextEditorController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.subject),
            labelText: MySubjectLable,
            hintText: MySubject,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        SizedBox(
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 8,
            controller: messageTextEditorController,
            decoration: const InputDecoration(
              contentPadding: const EdgeInsets.only(
                bottom: 200.0,
              ),
              prefixIcon: Icon(Icons.message),
              labelText: MyMessageLable,
              hintText: MyMessage,
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                final complainModel = ComplainModel(
                  email: emailTextEditorController.text.trim(),
                  subject: subjectTextEditorController.text.trim(),
                  message: messageTextEditorController.text.trim(),
                );
                await FirestoreDb.addComplain(complainModel);
                emailTextEditorController.clear();
                subjectTextEditorController.clear();
                messageTextEditorController.clear();
              },
              child: const Text(
                "Complain",
              ),
            ))
      ])),
    );
  }
}
