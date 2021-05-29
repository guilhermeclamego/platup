import 'package:flutter/material.dart';
import 'package:platup/Services/loginService.dart' as loginService;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void loginHandler() => loginService.loginService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PlatUp')),
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 25),
                decoration: InputDecoration(
                    labelText: "Usuário",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.black, fontSize: 30),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              Divider(),
              ElevatedButton(
                onPressed: loginHandler,
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
