/// Esse arquivo possui o motor de funcionamento do programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 15/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 1

import 'dart:io' as principal;
import '../lib/mensagens.dart' as msn;
import '../lib/tela_menu.dart' as menu;
import '../lib/ferramenta_interna.dart' as auxiliar;
import '../lib/operacao_soma.dart' as soma;
import '../lib/operacao_subtracao.dart' as subtracao;
import '../lib/operacao_multiplicacao.dart' as multiplicacao;
import '../lib/operacao_divisao.dart' as divisao;

void motor() {
  // Limpeza de Tela
  auxiliar.limparTela();

  // Inserir o primeiro valor e TODO:valida tipo
  msn.inserirValorA();
  double valorA = double.parse(principal.stdin.readLineSync()!);

  // Inserir o segundo valor e TODO:valida tipo
  msn.inserirValorB();
  double valorB = double.parse(principal.stdin.readLineSync()!);

  // Inserir o operador e TODO:valida tipo
  msn.inserirOperador();
  String operador = principal.stdin.readLineSync()!;

  switch (operador) {
    case '+':
      msn.resultado(valorA, operador, valorB, soma.soma(valorA, valorB));
      break;
    case '-':
      msn.resultado(
        valorA,
        operador,
        valorB,
        subtracao.subtracao(valorA, valorB),
      );
      break;
    case '*':
      msn.resultado(
        valorA,
        operador,
        valorB,
        multiplicacao.multiplicacao(valorA, valorB),
      );
      break;
    case '/':
      if (valorB == 0) {
        print('Não se divide por zero');
        break;
      } else {
        msn.resultado(
          valorA,
          operador,
          valorB,
          divisao.divisao(valorA, valorB),
        );
        break;
      }
    default:
      print('Operador inválido');
      break;
  }
  // Opções de encerramento
  msn.opcoesDeEncerramento();
  var retorno = principal.stdin.readLineSync();

  switch (retorno) {
    case '1':
      break;
    case '2':
      menu.menu();
      break;
    case '3':
      motor();
      break;
    default:
      print('Opção inválida. Iremos encerrar o programa.');
      break;
  }
}
