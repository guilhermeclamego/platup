import 'package:http/http.dart' as http;

void loginService() async {
  var headers = {'Content-Type': 'application/json'};
  var request =
      http.Request('POST', Uri.parse('https://3e76e4fc3f1b.ngrok.io/login'));
  request.body = '''{\n    "username": "su",\n    "password": "123"\n}''';
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
