import 'package:flutter/material.dart';

class ContactFormProvider extends ChangeNotifier {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  TextEditingController get nameController => _nameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get subjectController => _subjectController;
  TextEditingController get descriptionController => _descriptionController;
  
  void onSubmit() {
    if(descriptionController.text.isEmpty) {
    
    }
  }
  
}
