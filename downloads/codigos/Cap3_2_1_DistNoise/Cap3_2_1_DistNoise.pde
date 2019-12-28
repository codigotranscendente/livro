/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 3 - Seção 3.2
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
  
  // Propriedades do ruído:
  float ruido = 0;
  float amplitudeRuido = 0.01;
  
  // Variáveis auxiliares para interligar o ponto anterior com o atual:
  float xAnterior = 0;
  float yAnterior = height*noise(ruido);
  
  for(int i = 0; i < width; i++) {
    // Coordenada y do ponto definida aleatoriamente:
    float y = height*noise(ruido);
    
    line(xAnterior,yAnterior,i,y);
    
    yAnterior = y;
    xAnterior = i;
    
    // Incremento da variável para produzir um ruído distinto:
    ruido += amplitudeRuido;
  }
}