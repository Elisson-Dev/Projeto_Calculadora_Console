/// Esse arquivo possui o menu de opções para o usuário do programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 20/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 2

import 'dart:io' as principal;
import 'ferramenta_interna.dart';
import 'mensagens.dart';
import 'motor.dart';
import 'tela_manual.dart';
import 'tela_sobre.dart';

class TelaMenu {
  // instancia as classes
  FerramentaInterna auxiliar = FerramentaInterna();
  Mensagens msn = Mensagens();
  Motor motor = Motor();
  TelaManual manual = TelaManual();
  TelaSobre sobre = TelaSobre();

  void menu() {
    // Variável pra garantir ausência de erro no loop de menu
    bool condicao = true;

    // Limpa a tela
    auxiliar.limparTela();

    // Apresenta as opções de menu
    msn.escolhaMenu();

    // Pergunta sobre qual opção deseja
    msn.opcaoDesejada();

    do {
      // Lê a opção escolhida pelo usuário e faz a decisão
      int opcao = int.parse(principal.stdin.readLineSync()!);
      switch (opcao) {
        case 1:
          auxiliar.limparTela();
          condicao = false;
          motor.motor();
          break;
        case 2:
          auxiliar.limparTela();
          condicao = false;
          manual.ajuda();
          break;
        case 3:
          auxiliar.limparTela();
          condicao = false;
          sobre.sobre();
          break;
        case 4:
          auxiliar.limparTela();
          condicao = false;
          break;
        default:
          print('Favor escolher apenas uma das opções do menu.');
      }
    } while (condicao);
  }
}
