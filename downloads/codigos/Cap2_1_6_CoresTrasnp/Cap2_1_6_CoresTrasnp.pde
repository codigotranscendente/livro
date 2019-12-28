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
  size(175,175);
  background(255);
  
  // Remove a borda das figuras:
  noStroke();
  
  // Vermelho 50% transparente:
  fill(255,0,0,127);
  rect(25,25,75,75);
  
  // Verde 50% transparente:
  fill(0,255,0,127);
  rect(50,50,75,75);
  
  // Violeta 50% transparente:
  fill(255,0,255,127);
  rect(75,75,75,75);
}