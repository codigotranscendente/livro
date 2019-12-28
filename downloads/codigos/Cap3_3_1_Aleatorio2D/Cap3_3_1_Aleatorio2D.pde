/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 3 - Seç?o 3.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(300,150);
  background(255);
  
  // Varre todos os pixels da janela e os preenche com um ton de cinza aleatório:
  for(int i = 0; i < width; i++) {
    for(int j = 0; j < height; j++) {
      stroke(color(random(255)));
      point(i,j);
    }
  }
}