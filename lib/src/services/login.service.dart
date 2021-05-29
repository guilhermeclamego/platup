import 'package:http/http.dart' as http;
import 'package:platup/src/shared/models/usuario.model.dart' as usuarioModel;

void loginService(usuario, senha) async {
  var jsonUsuario = new usuarioModel.Usuario(usuario, senha).toJson();
  print(jsonUsuario);
  var headers = {'Content-Type': 'application/json'};
  var request =
      http.Request('POST', Uri.parse('https://3e76e4fc3f1b.ngrok.io/login'));
  request.body = jsonUsuario.toString();
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
