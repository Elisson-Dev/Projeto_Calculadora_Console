/// Esse arquivo é a tela de informação do desenvolvedor do Software
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 15/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 1

import 'dart:io' as principal;
import '../lib/mensagens.dart' as msn;
import '../lib/tela_menu.dart' as menu;
import '../lib/ferramenta_interna.dart' as auxiliar;

void sobre() {
  msn.sobreSoftware();

  msn.retornoMenu();
  var retorno = principal.stdin.readLineSync();

  if (retorno == 's') {
    menu.menu();
  } else {
    auxiliar.limparTela();
  }
}
