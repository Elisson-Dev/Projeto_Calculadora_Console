/// Esse arquivo possui as mensagens utilizadas no programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 20/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 2

class Mensagens {
  // Boas vindas aos usuários
  void apresentacao() {
    print('********************************************************');
    print('********************************************************');
    print('*********** Bem-vindo à Calculadora Terminal ***********');
    print('********************************************************');
    print('********************************************************');
  }

  // Boas vindas aos usuários
  void agradecimento() {
    print('********************************************************');
    print('********************************************************');
    print('**** Obrigado por utilizar a Calculadora Terminal ******');
    print('********************************************************');
    print('********************************************************');
  }

  // Informações sobre o programa e sobre o desenvolvedor
  void sobreSoftware() {
    print('----------------------------------------------');
    print('----------------------------------------------');
    print('----------------------------------------------');
    print('----------------------------------------------');
    print('---------____ Sobre o Software ____-----------');
    print('----------------------------------------------');
    print('----------------------------------------------');
    print('--------- @Nome:___Calculadora Console  ------');
    print('--------- @Autor:__Elisson (elss)       ------');
    print('--------- @Versão:_0.0.1                ------');
    print('----------------------------------------------');
    print('----------------------------------------------');
    print('----------------------------------------------');
    print('----------------------------------------------');
  }

  // Ajuda no uso do software
  void informacoes() {
    print('----------------------------------------------');
    print('----------------------------------------------');
    print('----------------- Orientação------------------');
    print('------ Operações disponíveis: ----------------');
    print('');
    print('------ Soma: +           ---------------------');
    print('------ Subtração: -      ---------------------');
    print('------ Multiplicação: *  ---------------------');
    print('------ Divisão: /        ---------------------');
    print('');
    print('------ Forma de Uso : ------------------------');
    print('');
    print('------ i   = primeiro insere <A>           ---');
    print('------ ii  = segundo  insere <B>           ---');
    print('------ iii = terceiro insere <operador>    ---');
    print('------ iv  = Resultado: <A> <operador> <B> ---');
    print('----------------------------------------------');
    print('----------------------------------------------');
  }

  // Opções de menu do programa
  void escolhaMenu() {
    print('----------------------------------------------');
    print('----__________MENU PRINCIPAL_________---------');
    print('----------------------------------------------');
    print('');
    print('------ Escolha apenas uma opção (número)   ---');
    print('');
    print('------ 1 = Calculadora Simples             ---');
    print('------ 2 = Manual de Uso                   ---');
    print('------ 3 = Sobre o Software                ---');
    print('------ 4 = Sair do Programa                ---');
    print('');
    print('----------------------------------------------');
    print('----------------------------------------------');
  }

  // Pergunta sobre a escolha de opção
  void opcaoDesejada() {
    print('Qual opção deseja? ');
  }

  // Pergunta de retorno ao menu
  void retornoMenu() {
    print('Deseja retornar ao menu? (s - sim / qualquer tecla - não)');
  }

  // Inserir valor A
  void inserirValorA() {
    print('Digite o valor de A: ');
  }

  // Inserir valor B
  void inserirValorB() {
    print('Digite o valor de B: ');
  }

  // Inserir operador
  void inserirOperador() {
    print('Digite o operador: ');
  }

  // Apresenta o Resultado
  void resultado(double a, String b, double c, double d) {
    print('O resultado de $a $b $c é $d');
  }

  // As opções da tela do motor
  void opcoesDeEncerramento() {
    print('Deseja (1) Encerrar, (2) Menu, (3) Fazer outra conta?');
  }
}
