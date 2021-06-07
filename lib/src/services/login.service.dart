import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:platup/src/shared/models/usuario.dart' as usuarioModel;
import 'package:platup/src/common/storage.dart' show storage;

Future<bool> loginService(String username, String password) async {
  usuarioModel.Usuario oUsuario = new usuarioModel.Usuario(username, password);

  final response = await http.post(Uri.parse('http://192.168.3.104:3000/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(oUsuario.toJson()));

  if (response.statusCode == 200) {
    Map<String, dynamic> resp = jsonDecode(response.body);
    await storage.write(key: 'jwt-token', value: resp['token'].toString());

    return true;
  } else {
    return false;
  }
}
