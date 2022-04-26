import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppPageDefault extends StatelessWidget {
  final List<Widget>? childrens;
  final String? titlePage;

  const AppPageDefault({Key? key, this.childrens, this.titlePage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Text(
            titlePage!,
            style: GoogleFonts.robotoCondensed(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 44,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: childrens!,
              ),
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
          ),
        )
      ],
    );
  }
}
