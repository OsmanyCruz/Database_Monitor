import 'package:database_monitor/icons/data_base_monitor_icons.dart';
import 'package:database_monitor/models/userConexionModel.dart';
import 'package:flutter/material.dart';

class ListUserDatabase extends StatelessWidget {

  final List<UserConexionModel> itemsUsers;
  final usuarioMaxConexiones;
  const ListUserDatabase({
    super.key, required this.itemsUsers, required this.usuarioMaxConexiones
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0xffEFEFEF)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(
                    0.5), // Color de la sombra con opacidad
                spreadRadius: 0, // Extensión de la sombra
                blurRadius: 4, // Difuminado de la sombra
                offset: const Offset(0,
                    4), // Desplazamiento de la sombra en X y Y
              ),
            ]),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  left: 15, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    DataBaseMonitor.status,
                    size: 30,
                    color: Color(0xffAAAAAA),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        Text(
                          'Connections per user',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAAAAAA)),
                        ),
                        Text(
                          'Here you can see the connected \nusers and their number of connections',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.normal,
                              color: Color(0xffAAAAAA)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: itemsUsers.length,
                itemBuilder: (context, index) {
                  var islast = index == (itemsUsers.length-1);
                  bool isSelected = index == usuarioMaxConexiones;
                  return Column(
                          children: [
                            ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration:  BoxDecoration(
                                    color: isSelected?const Color(0xffF6D723):const Color(0xffE4E9F8),
                                    borderRadius:
                                        const BorderRadius.all(
                                            Radius.circular(
                                                20))),
                                child:  Center(
                                  child: Text(itemsUsers[index].numeroConexiones.toString(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Barlow',
                                          fontWeight:
                                              FontWeight.w800)),
                                ),
                              ),
                              title:  Text(itemsUsers[index].usuario,
                                  style: const TextStyle(
                                    color: Color(0xff3C3C3C),
                                    fontSize: 14,
                                    fontFamily: 'Barlow',
                                    fontWeight: FontWeight.w500,
                                  )),
                              subtitle: const Text(
                                  'number of connections',
                                  style: TextStyle(
                                    color: Color(0xff3C3C3C),
                                    fontSize: 10,
                                    fontFamily: 'Barlow',
                                    fontWeight:
                                        FontWeight.normal,
                                  )),
                              trailing: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    color: Color(0xffFE8E8E),
                                    borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                5))),
                                child: IconButton(
                                  icon: const Icon(
                                    DataBaseMonitor.trash_2,
                                    size: 18.0,
                                    color: Colors.white,
                                  ), // Tamaño del icono
                                  onPressed: () {
                                    // Acción del botón
                                  },
                                  iconSize:
                                      40, // Tamaño del icono (ajustar según necesites)
                                  padding: EdgeInsets
                                      .zero, // Sin padding
                                  constraints:
                                      const BoxConstraints(
                                    minWidth:
                                        40, // Ancho mínimo
                                    minHeight:
                                        40, // Alto mínimo
                                  ),
                                ),
                              ),
                            ),
                            !islast
                                ? const Divider(
                                    color: Color(0xffEFF1F6),
                                  )
                                : const SizedBox()
                          ],
                        );
                }),
          ],
        ));
  }
}
