/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 3 - Seçao 3.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(400,200);
  background(255);
  
  // VariÃ¡veis auxiliares para interligar o ponto anterior com o atual:
  float xAnterior = 0;
  float yAnterior = height*random(1);
  
  for(int i = 0; i < width; i++) {
    // Coordenada y do ponto definida aleatoriamente:
    float y = height*random(1);
    
    line(xAnterior,yAnterior,i,y);
    
    yAnterior = y;
    xAnterior = i;
  }
}