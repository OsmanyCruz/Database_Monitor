
import 'package:database_monitor/widgets/dottedLine.dart';
import 'package:flutter/material.dart';

class TitleStatistics extends StatelessWidget {
  const TitleStatistics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.all(Radius.circular(5)),
              image: const DecorationImage(
                image: AssetImage(
                    'assets/images/backgroundGraphicSmall.png'), // Cambia a la ruta de tu imagen
                fit: BoxFit
                    .fitWidth, // Ajusta la imagen para cubrir todo el espacio
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(
                      0.1), // Color de la sombra con opacidad
                  spreadRadius: 0, // Extensión de la sombra
                  blurRadius: 4, // Difuminado de la sombra
                  offset: const Offset(
                      0, 4), // Desplazamiento de la sombra en X y Y
                ),
              ]),
          child: Row(
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '50',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w300,
                            height: 0,
                            color: Color(0xff3C3C3C)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Active \nConnections',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10),
                    child: DottedLineWidget(
                        color: const Color(0xff3C3C3C),
                        dashLength: 3,
                        dashSpace: 2,
                        strokeWidth: 1,
                        orientation: Axis.vertical),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '28',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w300,
                            height: 0,
                            color: Color(0xff3C3C3C)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'User with more \nconnections',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10),
                    child: DottedLineWidget(
                        color: const Color(0xff3C3C3C),
                        dashLength: 3,
                        dashSpace: 2,
                        strokeWidth: 1,
                        orientation: Axis.vertical),
                  )
                ],
              )),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'User 1',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_outward_outlined,
                      size: 12,
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(300),
              backgroundColor: const Color(0xff3C3C3C),
              padding: const EdgeInsets.symmetric(
                  horizontal: 30), // Relleno interno
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10), // Bordes redondeados
              ),
              elevation: 5, // Sombra del botón
            ),
            child: const Text('Kill all processes',
                style: TextStyle(
                    color: Color(0xffF8F8F5),
                    fontSize: 15,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
