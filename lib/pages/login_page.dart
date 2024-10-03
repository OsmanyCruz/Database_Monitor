import 'package:database_monitor/icons/data_base_monitor_icons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _selectedValue = 0; // Valor inicial
  bool _visiblePassword = true;
 final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

   @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

 
 // Function to validate password
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 5) {
      return 'Password must be at least 5 characters long';
    }else if (value != 'admin'){
        return 'Invalid Password';
    }
    
     /* else if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    } else if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    } else if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return 'Password must contain at least one special character (!@#\$&*~)';
    } */
    return null; // If everything is fine, return null (no errors)
  }

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/curves.png'), // Cambia a la ruta de tu imagen
              fit: BoxFit.cover, // Ajusta la imagen para cubrir todo el espacio
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 25, child: Image.asset('assets/images/logo.png')),
                          const Text('Select your profile to access.',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.normal))
                        ])),
                Expanded(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border:
                                    Border.all(color: const Color(0xffEFEFEF)),
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
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  var islast = index == 3;
                                  return Column(
                                    children: [
                                      ListTile(
                                          leading: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: const BoxDecoration(
                                                color: Color(0xffE4E9F8),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child:  Center(
                                              child: Text('U${(index + 1)}',
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Barlow',
                                                      fontWeight:
                                                          FontWeight.normal)),
                                            ),
                                          ),
                                          title:  Text('User ${(index + 1)}',
                                              style: const TextStyle(
                                                color: Color(0xff3C3C3C),
                                                fontSize: 14,
                                                fontFamily: 'Barlow',
                                                fontWeight: FontWeight.w500,
                                              )),
                                          subtitle: const Text(
                                              'my.mail@google.com',
                                              style: TextStyle(
                                                color: Color(0xff3C3C3C),
                                                fontSize: 10,
                                                fontFamily: 'Barlow',
                                                fontWeight: FontWeight.normal,
                                              )),
                                          trailing: Radio(
                                            value: index,
                                            groupValue: _selectedValue,
                                            onChanged: (int? value) {
                                              setState(() {
                                                _selectedValue = value!;
                                              });
                                            },
                                            fillColor: WidgetStateProperty
                                                .resolveWith<Color>(
                                                    (Set<WidgetState> states) {
                                              if (states.contains(
                                                  WidgetState.selected)) {
                                                return const Color(
                                                    0xff93C134); // Color cuando está seleccionado
                                              }
                                              return const Color(
                                                  0xffE9E9EA); // Color cuando no está seleccionado
                                            }),
                                            activeColor:
                                                const Color(0xff93C134),
                                          )),
                                      !islast
                                          ? const Divider(
                                              color: Color(0xffEFF1F6),
                                            )
                                          : const SizedBox()
                                    ],
                                  );
                                })),
                        Container(
                          height: 110,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border:
                                  Border.all(color: const Color(0xffEFEFEF)),
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('Enter your temporary password [admin].',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.normal)),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Form(
                                  key: _formKey,
                                  child: TextFormField (
                                    controller: _passwordController,
                                    obscureText: _visiblePassword,
                                    validator: validatePassword,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      labelStyle: const TextStyle(
                                        color: Color(0xffAAAAAA),
                                        fontSize: 14,
                                        fontFamily: 'Barlow',
                                        fontWeight: FontWeight
                                            .w500, // Color del texto del label
                                      ),
                                      hintText:
                                          'Enter your password', // Texto de ayuda
                                      hintStyle: const TextStyle(
                                          color: Colors.grey), // Estilo del hint
                                  
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _visiblePassword = !_visiblePassword;
                                            });
                                          },
                                          icon: _visiblePassword? const Icon(
                                            DataBaseMonitor.eye,
                                            size: 20,
                                            color: Color(0xffAAAAAA),
                                          ): const Icon(
                                            DataBaseMonitor.eye_slash,
                                            size: 20,
                                            color: Color(0xffAAAAAA),
                                          )
                                          ),
                                      filled: true,
                                      fillColor: Colors
                                          .white, // Color de fondo del TextField
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Color(
                                              0xffEFEFEF), // Color del borde cuando está inactivo
                                          width: 1.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Color(
                                              0xffD5D5D5), // Color del borde cuando está inactivo
                                          width: 1.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Color(
                                              0xffFE8E8E), // Color del borde cuando está inactivo
                                          width: 1.0,
                                        ),
                                      ),
 
                                      focusedErrorBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Color(
                                              0xffFE8E8E), // Color del borde cuando está inactivo
                                          width: 1.0,
                                        ),
                                      ),

                                      errorStyle: const TextStyle(
                                        color: Color(
                                              0xffFE8E8E), // Color del texto de error
                                         fontSize: 14,
                                        fontFamily: 'Barlow',
                                        fontWeight: FontWeight
                                            .w500, // Color del texto del labeleso del texto de error
                                      ),  

                                    ),
                                    style: const TextStyle(
                                      color: Color(0xffAAAAAA),
                                      fontSize: 14,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight
                                          .w500, // Color del texto del label
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                   Expanded(
                    flex: 2,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                 Navigator.pushNamed(context, 'home');
                            }
                          },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size.fromWidth(300),
                              backgroundColor: const Color(0xff3C3C3C),
                              padding: const EdgeInsets.symmetric(horizontal: 30), // Relleno interno
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Bordes redondeados
                              ),
                              elevation: 5, // Sombra del botón
                            ),
                            child: Text('Enter as User ${_selectedValue+1}' ,style: const TextStyle(
                                color: Color(0xffF8F8F5),
                                      fontSize: 14,
                                      fontFamily: 'Barlow',
                                      fontWeight: FontWeight.normal)),
                          ),

                        const Text(
                              '© copyright all rights reserved.',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.normal)),
                      ],
                    )

                  )
                   
              ],
            ),
          ),
        ),
      ],
    )));
  }
}
