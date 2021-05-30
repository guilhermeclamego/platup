import 'package:flutter/material.dart';
import 'package:platup/src/services/login.service.dart' as loginService;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void loginHandler(usuario, senha) =>
      loginService.loginService(usuario, senha);

  @override
  Widget build(BuildContext context) {
    var usuarioController = TextEditingController();
    var senhaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('PlatUp')),
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: usuarioController,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 25),
                decoration: InputDecoration(
                    labelText: "Usuário",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(),
              TextFormField(
                controller: senhaController,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 30),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(),
              ElevatedButton(
                onPressed: () =>
                    loginHandler(usuarioController.text, senhaController.text),
                child: Text(
                  "Entrar",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ))),
    );
  }
}
