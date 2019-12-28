/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 5 - Seção 5.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Ruídos:
float nx = 0, ny = 100, nr = 200;

void setup() {
  size(1200, 500);
  background(255);
  noFill();
}

void draw() {
  float posX = map(noise(nx),0,1,0,width);
  float posY = map(noise(ny),0,1,0,height);
  float r = 100 + 200*noise(nr);
  
  // Para suavizar o desenho, descomente a linha abaixo
  //stroke(map(r,100,300,100,0),20);
  ellipse(posX,posY,r,r);
  
  // Os incrementos de ruídos foram alterados
  // inúmeras vezes até achar um movimento satisfatório.
  nx += 0.008;
  ny += 0.005;
  nr += 0.005;
}