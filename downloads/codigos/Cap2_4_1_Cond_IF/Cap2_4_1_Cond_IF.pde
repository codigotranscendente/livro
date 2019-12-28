/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.4
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(300,150);
}

void draw() {
  background(210);
  fill(0);
  
  // Se o mouse estiver na parte esquerda da janela ela é preenchida com um retângulo preto.
  // Caso contrário, o mouse estará na parte direita, e ela será preenchida.
  if(mouseX < width/2) {
    rect(0,0,width/2,height);
  }
  else {
    rect(width/2,0,width/2,height);
  }
}