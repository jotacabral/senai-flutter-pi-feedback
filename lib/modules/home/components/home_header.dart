import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: builderContent(),
      height: 300,
    );
  }

  Column builderContent() {
    return Column(children: [
      const Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.all(13.0),
          child: Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      builderImageCircular(),
      const SizedBox(
        height: 5,
      ),
      Text(
        'Bill Gates'.toUpperCase(),
        style: GoogleFonts.robotoCondensed(
            fontWeight: FontWeight.w700, color: Colors.white, fontSize: 30),
      ),
      const Text(
        'Desenvolvedor de Sistemas',
        style:
            TextStyle(color: Color.fromARGB(166, 255, 255, 255), fontSize: 10),
      )
    ]);
  }

  Container builderImageCircular() {
    return Container(
      width: 130,
      height: 130,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
                'https://likewise-stage.azureedge.net/uploads/3eb6cf23-895b-45e9-b92c-5fb1b457dd04/bill-gates-profile-pic.jpg'),
          )),
    );
  }
}
