/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.1.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */
 
void setup() {
  size(325,175);
  
  // Preenche o fundo da janela de exibição com a cor branca
  background(255);
  
  // Declara a cor vermelha como 255 apenas no canal R:
  color vermelho = color(255,0,0);
  // Preenche a figura com a cor vermelha:
  fill(vermelho);
  rect(25,50,75,75);
  
  // Declara a cor azul como 255 apenas no canal B:
  color azul = color(0,0,255);
  fill(azul);
  rect(125,50,75,75);
  
  // Usa diretamente a cor violeta como 255 no canal R e no canal B:
  fill(255,0,255);
  rect(225,50,75,75);
}