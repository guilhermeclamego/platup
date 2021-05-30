import 'package:http/http.dart' as http;
import 'package:platup/src/shared/models/usuario.dart' as usuarioModel;

Future<bool> loginService(String username, String password) async {
  usuarioModel.Usuario oUsuario = new usuarioModel.Usuario(username, password);
  var jsonUsuario = oUsuario.toJson();
  print(jsonUsuario.toString());
  var headers = {'Content-Type': 'application/json'};
  var request =
      http.Request('POST', Uri.parse('https://636dc71c06a0.ngrok.io/login'));
  request.body = jsonUsuario.toString();
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
    return true;
  } else {
    print(response.reasonPhrase);
    return false;
  }
}
