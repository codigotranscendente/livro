/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.2.6
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void draw() {
  background(255);
  
  // Realiza a transformação da posição do cursor para um valor de cor:
  // Posição do mouse (mouseX) vai de 0 ao tamanho da janela (width).
  // Cor vermelha vai de 0 (preto) a 255 (vermelho).
  float r = map(mouseX,0,width,0,255);
  
  color cor = color(r,0,0);
  fill(cor);
  
  // Desenha um círculo cujo ponto central se encontra nas coordenadas (50,50),
  // com 50 pixels de diâmetro.
  ellipse(50,50,50,50);
}