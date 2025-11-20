/// Esse arquivo é a tela de informação do desenvolvedor do Software
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 20/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 2

import 'dart:io' as principal;
import 'mensagens.dart';
import 'tela_menu.dart';
import 'ferramenta_interna.dart';

class TelaSobre {
  //instanciando objetos
  Mensagens msn = Mensagens();
  FerramentaInterna auxiliar = FerramentaInterna();

  void sobre() {
    msn.sobreSoftware();

    msn.retornoMenu();
    var retorno = principal.stdin.readLineSync();

    if (retorno == 's') {
      new TelaMenu().menu();
    } else {
      auxiliar.limparTela();
    }
  }
}
