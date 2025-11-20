/// Esse arquivo possui as informações de como usar o programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 20/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 2

import 'dart:io' as principal;
import 'mensagens.dart';
import 'tela_menu.dart';

class TelaManual {
  void ajuda() {
    // Instanciamento de objeto
    var msn = new Mensagens();

    msn.informacoes();

    msn.retornoMenu();
    var retorno = principal.stdin.readLineSync();

    if (retorno == 's') {
      new TelaMenu().menu();
    }
  }
}
