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
  size(400,150);
  noStroke();
  
  // Variáveis que controlam o ruído das cores:
  float nr = 0, ng = 100, nb = 200;
  
  for(int i = 0; i < 500; i++) {
    // Coordenada x,y do retângulo definida aleatoriamente:
    float x = random(width);
    float y = random(height);
    
    // Componentes da cor de preenchimento definidas aleatoriamente:
    float r = 255*noise(nr);
    float g = 255*noise(ng);
    float b = 255*noise(nb);
    
    fill(r,g,b);
    rect(x-15,y-15,30,30);
    
    // Incremento das variáveis para produzir ruídos distintos:
    nr += 0.01;
    ng += 0.01;
    nb += 0.01;
  }
}