class Usuario {
  String usuario;
  String senha;

  Usuario(this.usuario, this.senha);

  Usuario.fromJson(Map<String, dynamic> json)
      : usuario = json['usuario'],
        senha = json['email'];

  Map<String, dynamic> toJson() => {
        'username': usuario,
        'password': senha,
      };
}
