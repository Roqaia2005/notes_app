import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            customTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            customTextField(
              hint: "Content",
              maxLines: 5,
            ),
            
            SizedBox(
              height: 30,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}


