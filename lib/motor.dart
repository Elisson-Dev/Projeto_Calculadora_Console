/// Esse arquivo possui o motor de funcionamento do programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 20/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 2

import 'dart:io' as principal;
import 'ferramenta_interna.dart';
import 'mensagens.dart';
import 'tela_menu.dart';
import 'operacao_soma.dart';
import 'operacao_subtracao.dart';
import 'operacao_multiplicacao.dart';
import 'operacao_divisao.dart';

class Motor {
  void motor() {
    // Instanciamento de objeto
    var auxiliar = new FerramentaInterna();
    var msn = new Mensagens();
    var menu = new TelaMenu();
    var soma = new OperacaoSoma();
    var subtracao = new OperacaoSubtracao();
    var multiplicacao = new OperacaoMultiplicacao();
    var divisao = new OperacaoDivisao();

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
}
