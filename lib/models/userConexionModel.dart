 import 'dart:convert';

List<UserConexionModel> userConexionModelFromJson(String str) => List<UserConexionModel>.from(json.decode(str).map((x) => UserConexionModel.fromJson(x)));

String userConexionModelToJson(List<UserConexionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserConexionModel {
    String usuario;
    int numeroConexiones;

    UserConexionModel({
        required this.usuario,
        required this.numeroConexiones,
    });

    factory UserConexionModel.fromJson(Map<String, dynamic> json) => UserConexionModel(
        usuario: json["Usuario"],
        numeroConexiones: json["NumeroConexiones"],
    );

    Map<String, dynamic> toJson() => {
        "Usuario": usuario,
        "NumeroConexiones": numeroConexiones,
    };
}
