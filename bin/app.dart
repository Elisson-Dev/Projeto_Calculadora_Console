/// Esse arquivo possui a função principal de inicialização do programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 15/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 1

import '../lib/mensagens.dart' as msn;
import '../lib/tela_menu.dart' as menu;
import '../lib/ferramenta_interna.dart' as auxiliar;

void main() {
  auxiliar.limparTela();

  msn.apresentacao();

  menu.menu();

  msn.agradecimento();
}
