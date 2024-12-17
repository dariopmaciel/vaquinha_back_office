import 'storage.dart';
import 'dart:html';

//ao trab com sessão é necessário usar as variaveis que vem do html

class SessionStorage extends Storage {
  @override
  String getData(String key) {
    return window.sessionStorage[key] ?? '';
  }

  @override
  void setData(String key, String valor) {
    // TODO: implement setData
  }

  @override
  void clean() {
    // TODO: implement clean
  }
}
