/// Esse arquivo possui a função principal de inicialização do programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 20/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 2

import '../lib/mensagens.dart';
import '../lib/tela_menu.dart';
import '../lib/ferramenta_interna.dart';

void main() {
  //Instanciamento de objeto
  var auxiliar = new FerramentaInterna();
  var msn = new Mensagens();
  var menu = new TelaMenu();

  auxiliar.limparTela();

  msn.apresentacao();

  menu.menu();

  msn.agradecimento();
}
