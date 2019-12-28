/*
 * Livro: O C�digo Transcendente
 * por Mateus Paresqui Berruezo.
 * Cap�tulo 3 - Se�?o 3.1
 * 
 * Parte do reposit�rio encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(400,150);
  noStroke();

  for(int i = 0; i < 500; i++) {
    // Coordenada x,y do ret�ngulo definida aleatoriamente:
    float x = random(width);
    float y = random(height);
    
    // Componentes da cor de preenchimento definidas aleatoriamente:
    float r = random(255);
    float g = random(255);
    float b = random(255);
    
    fill(r,g,b);
    rect(x-15,y-15,30,30);
  }
}