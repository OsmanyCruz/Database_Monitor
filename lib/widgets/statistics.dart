import 'package:database_monitor/icons/data_base_monitor_icons.dart';
import 'package:database_monitor/models/userConexionModel.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  final maxConexions;
  final UserConexionModel userMax;

  const Statistics({
    super.key, required this.maxConexions, required this.userMax,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: const Color(0xffEFEFEF)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.1), // Color de la sombra con opacidad
                    spreadRadius: 0, // Extensión de la sombra
                    blurRadius: 4, // Difuminado de la sombra
                    offset: const Offset(
                        0, 4), // Desplazamiento de la sombra en X y Y
                  ),
                ]),
            child: Column(
              children: [
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 4,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.person_outline_sharp,
                                    size: 35,
                                    color: Color(0xff3C3C3C),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'The user with the highest \nnumber of connections at the\nmoment is displayed',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Barlow',
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 3),
                                            decoration: const BoxDecoration(
                                              color: Color(0xffF6D723),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child:  Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  userMax.usuario,
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Barlow',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const Icon(
                                                  Icons.arrow_outward_outlined,
                                                  size: 10,
                                                  color: Colors.black,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                           Expanded(
                              flex: 2,
                              child: Center(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      userMax.numeroConexiones.toString(),
                                      style: const TextStyle(
                                          fontSize: 80,
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.bold,
                                          height: 0,
                                          color: Color(0xffE5E6E8)),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, bottom: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/backgroundGraphic.png'), // Cambia a la ruta de tu imagen
                              fit: BoxFit
                                  .fill, // Ajusta la imagen para cubrir todo el espacio
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(
                                    0.1), // Color de la sombra con opacidad
                                spreadRadius: 0, // Extensión de la sombra
                                blurRadius: 4, // Difuminado de la sombra
                                offset: const Offset(0,
                                    4), // Desplazamiento de la sombra en X y Y
                              ),
                            ]),
                        child: Column(
                          children: [
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 20,left: 5),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            DataBaseMonitor.status,
                                            size: 35,
                                            color: Color(0xff3C3C3C),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Active \nConnections',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Barlow',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: Text(
                                            maxConexions.toString(),
                                            style: const TextStyle(
                                                fontSize: 80,
                                                fontFamily: 'Barlow',
                                                fontWeight: FontWeight.bold,
                                                height: 0,
                                                color: Color(0xff3C3C3C)),
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size.fromWidth(300),
                                  backgroundColor: const Color(0xff3C3C3C),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30), // Relleno interno
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Bordes redondeados
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
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
