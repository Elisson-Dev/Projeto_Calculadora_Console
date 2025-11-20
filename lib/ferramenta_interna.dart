/// Esse arquivo possui métodos para auxiliar interações com o programa
/// Criado     em 15/11/2025 por Elisson-Dev (elss)
/// Atualizado em 20/11/2025 por Elisson-Dev (elss)
/// Versão do arquivo: 2

import 'dart:io' as principal;

class FerramentaInterna {
  // Limpa a tela do terminal
  void limparTela() {
    if (principal.Platform.isWindows) {
      // Limpa a tela no Sistema Operacional Windows
      print(principal.Process.runSync("cls", [], runInShell: true).stdout);
    } else {
      // Limpa a tela nos Sistemas operacionais: Linux e macOS
      print(principal.Process.runSync("clear", [], runInShell: true).stdout);
    }
  }
}
