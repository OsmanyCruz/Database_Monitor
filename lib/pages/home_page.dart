import 'package:database_monitor/icons/data_base_monitor_icons.dart';
import 'package:database_monitor/models/userConexionModel.dart';
import 'package:database_monitor/widgets/listUserDatabase.dart';
import 'package:database_monitor/widgets/statistics.dart';
import 'package:database_monitor/widgets/titleStatistics.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _opacity = 0.0; // Opacidad inicial
// Opacidad inicial

List<UserConexionModel> _items = [
  UserConexionModel(usuario: 'User 1', numeroConexiones: 35),
  UserConexionModel(usuario: 'User 2', numeroConexiones: 27),
  UserConexionModel(usuario: 'User 3', numeroConexiones: 50),
  UserConexionModel(usuario: 'User 4', numeroConexiones: 63),
  UserConexionModel(usuario: 'User 5', numeroConexiones: 41),
  UserConexionModel(usuario: 'User 6', numeroConexiones: 80),
  UserConexionModel(usuario: 'User 7', numeroConexiones: 55),
  UserConexionModel(usuario: 'User 8', numeroConexiones: 73),
  UserConexionModel(usuario: 'User 9', numeroConexiones: 62),
  UserConexionModel(usuario: 'User 10', numeroConexiones: 48),
  UserConexionModel(usuario: 'User 11', numeroConexiones: 91),
  UserConexionModel(usuario: 'User 12', numeroConexiones: 30),
  UserConexionModel(usuario: 'User 13', numeroConexiones: 69),
  UserConexionModel(usuario: 'User 14', numeroConexiones: 25),
  UserConexionModel(usuario: 'User 15', numeroConexiones: 78),
];

var totalConexiones = 100;
var usuarioMaxConexiones = 2;

// Simular recarga de datos
  Future<void> _refreshItems() async {
    await Future.delayed(const Duration(seconds: 2)); // Simula un delay de 2 segundos
    setState(() {
                  _items = [
                          UserConexionModel(usuario: 'User 8', numeroConexiones: 73),
                          UserConexionModel(usuario: 'User 9', numeroConexiones: 62),
                          UserConexionModel(usuario: 'User 10', numeroConexiones: 48),
                          UserConexionModel(usuario: 'User 11', numeroConexiones: 91),
                          UserConexionModel(usuario: 'User 12', numeroConexiones: 30),
                          UserConexionModel(usuario: 'User 13', numeroConexiones: 69),
                          UserConexionModel(usuario: 'User 14', numeroConexiones: 25),
                          UserConexionModel(usuario: 'User 15', numeroConexiones: 78),
                        ];
    });
  }
  var isCollapsed = false;
  final collapsedBarHeight = 135.0;
  final expandedBarHeight = 320.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        // Controlar la opacidad en función de la posición del scroll
        double currentScroll = _scrollController.position.pixels;
        isCollapsed =
            _scrollController.offset > (expandedBarHeight - collapsedBarHeight);

        // Limitar el valor de opacidad entre 0.0 y 1.0
        if (currentScroll > 158) {
          _opacity = 1.0;
        }
        if (currentScroll < 158) {
          _opacity = 0.0;
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // const isCollapsed = false;

    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
              height: 25, child: Image.asset('assets/images/logo.png')),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                DataBaseMonitor.menu,
                size: 20,
                color: Color(0xff3C3C3C),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: Color(0xffE4E9F8),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const Center(
                    child: Text(
                  'U1',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.normal),
                )),
              ),
            )
          ],
        ),
        body: RefreshIndicator(
           onRefresh: _refreshItems,
           backgroundColor: const Color(0xffE4E9F8),
           color: const Color(0xff3C3C3C),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                forceMaterialTransparency: true,
                toolbarHeight: collapsedBarHeight,
                expandedHeight: expandedBarHeight,
                collapsedHeight: collapsedBarHeight,
                centerTitle: true,
                pinned: true,
                stretch: true,
                titleSpacing: 28,
                title: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: _opacity,
                  child: const TitleStatistics(),
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                flexibleSpace:  FlexibleSpaceBar(
                  stretchModes: const [
                    StretchMode.zoomBackground, // Zoom en el fondo al estirar
                    StretchMode.blurBackground, // Desenfoque del fondo
                  ],
                  collapseMode: CollapseMode.pin,
                  background: Statistics(maxConexions: totalConexiones, userMax: _items[usuarioMaxConexiones]),
                ),
              ),
              SliverToBoxAdapter(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height -
                          (collapsedBarHeight + 75),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListUserDatabase(itemsUsers: _items, usuarioMaxConexiones: usuarioMaxConexiones,),
                    )),
              )
            ],
          ),
        )
        //const Statistics(),
        );
  }
}

