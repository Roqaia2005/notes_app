import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/edit_note_view.dart';

import 'package:notes_app/widgets/notes_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffffcc80), borderRadius: BorderRadius.circular(16)),
        padding: EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        margin: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Text(
                "build your career with roqaia ",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                "May 1 2022",
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.7)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
