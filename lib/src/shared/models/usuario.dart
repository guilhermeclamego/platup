import 'package:json_annotation/json_annotation.dart';
part 'usuario.g.dart';

@JsonSerializable()
class Usuario {
  String username;
  String password;

  Usuario(this.username, this.password);

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);

  Map<String, dynamic> toJson() => _$UsuarioToJson(this);
}
