/// Esse arquivo possui as informações de como usar o programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 15/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 1

import 'dart:io' as principal;
import '../lib/mensagens.dart' as msn;
import '../lib/tela_menu.dart' as menu;

void ajuda() {
  msn.informacoes();

  msn.retornoMenu();
  var retorno = principal.stdin.readLineSync();

  if (retorno == 's') {
    menu.menu();
  }
}
