import 'storage.dart';
import 'dart:html';


//ao trab com sessão é necessário usar as variaveis que vem do html
//?tambem pode se trabalhar com LOCAL storage

class SessionStorage extends Storage {
  @override
  String getData(String key) {
    return window.sessionStorage[key] ?? '';
  }
  //ou assim
  // String getData(String key) => window.sessionStorage[key] ?? '';

  @override
  void setData(String key, String valor) => window.sessionStorage[key] = valor;

  @override
  void clean() => window.sessionStorage.clear();
}
