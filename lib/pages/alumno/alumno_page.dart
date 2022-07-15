import 'package:flutter/material.dart';
import 'package:lcchub/widgets/buttons/primary_buttons.dart';

import '../../config/responsive.dart';
import '../../config/size_config.dart';
import '../../widgets/cards/card.dart';
import '../../widgets/footer/footer.dart';

class AlumnoPage extends StatefulWidget {
  AlumnoPage({Key? key}) : super(key: key);

  @override
  _AlumnoPageState createState() => _AlumnoPageState();
}

class _AlumnoPageState extends State<AlumnoPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Header(),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: double.infinity,
          color: Color.fromARGB(255, 26, 113, 184),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.verified_user, size: 20, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text("Programa",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Alumnos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Plan de estudios",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Tésis",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none)),
                    LogoutButton(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(left: SizeConfig.blockSizeVertical! * 5),
              child: Row(
                children: [
                  Text("Licienciatura en\nCiencias de la Computación",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          decoration: TextDecoration.none)),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            if (Responsive.isDesktop(context))
              Wrap(
                spacing: 20,
                children: [
                  InfoCardTablero(),
                  InfoCardTablero(),
                  InfoCardTablero(),
                ],
              ),
            if (Responsive.isTablet(context))
              Wrap(
                spacing: 20,
                children: [
                  InfoCardTablero(),
                  InfoCardTablero(),
                ],
              ),
            if (Responsive.isMobile(context))
              Wrap(
                spacing: 20,
                children: [
                  InfoCardTablero(),
                ],
              ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Container(
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [],
              ),
            )
          ]),
        ),
        Container(
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Text("Lorem Ipsum..."),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical!,
                        ),
                        Text(
                            "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.\nLorem Ipsum "),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 3,
                    ),
                    Column(
                      children: [
                        Text("Lorem Ipsum..."),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical!,
                        ),
                        Text(
                            "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.\nLorem Ipsum "),
                      ],
                    ),
                    if (Responsive.isMobile(context))
                      Icon(Icons.image, size: 60)
                  ],
                ),
                if (Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                  Icon(Icons.image, size: 120)
              ]),
        ),
        Footer(),
      ]),
    );
  }
}


