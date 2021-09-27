import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Guilherme';
  String imgAvatar =
      'https://w7.pngwing.com/pngs/627/693/png-transparent-computer-icons-user-user-icon-thumbnail.png';
  String birthDate = '02/08/1991';

  void alterarDados() {
    name = 'Manhani';
    birthDate = '02/22/1222';
    notifyListeners();
  }

  void alterarNome() {
    name = 'VAZIO';
    notifyListeners();
  }
}
