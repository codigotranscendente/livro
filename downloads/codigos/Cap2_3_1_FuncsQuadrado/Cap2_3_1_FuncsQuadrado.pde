/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void quadrado(float _posX, float _posY, float _lado) {
  // Desenha um quadrado composto por quatro arestas:
  line(_posX, _posY, _posX + _lado, _posY);
  line(_posX + _lado, _posY, _posX + _lado, _posY + _lado);
  line(_posX + _lado, _posY + _lado, _posX, _posY + _lado);
  line(_posX, _posY + _lado, _posX, _posY);
}

void quadrado(float _posX, float _posY) {
  // Exibe as variáveis passadas para a função no console:
  println("Variável 1: "+ _posX + " Variável 2: "+ _posY);
}

void quadrado() {
  // Desenha um quadrado de lado e posição fixa:
  rect(0,0,50,50);
}

void setup() {
  quadrado(25,25,50);
  quadrado(25,25);
  quadrado();
}