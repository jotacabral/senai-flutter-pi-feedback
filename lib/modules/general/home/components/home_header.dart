import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:senai_feedback/shared/services/auth_service.dart';

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
          padding: EdgeInsets.all(28.0),
          child: Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ),
      ),
      builderImageCircular(),
      const SizedBox(
        height: 5,
      ),
      Text(
        AuthService.to.userLogged!.nome!.toUpperCase(),
        style: GoogleFonts.robotoCondensed(
            fontWeight: FontWeight.w700, color: Colors.white, fontSize: 30),
      ),
      Text(
        AuthService.to.userLogged!.cargo!.descricao!,
        style:
            TextStyle(color: Color.fromARGB(166, 255, 255, 255), fontSize: 15),
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
