import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:senai_feedback/shared/app_ui.dart';

class HomeCardDash extends StatelessWidget {
  final String? title;
  final int? total;

  const HomeCardDash({Key? key, this.title, this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 145,
        height: 70,
        child: Column(
          children: [
            Text(title!.toUpperCase(),
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 12)),
            Container(
              width: 30,
              height: 30,
              padding: EdgeInsets.all(8),
              child: Text(
                total!.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                  color: AppUi.colorB, borderRadius: BorderRadius.circular(80)),
            ),
          ],
        ),
      ),
    );
  }
}
