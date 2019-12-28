/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 5 - Seção 5.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Paleta de Cores
color[] c = { #581840, #900C3A, #C70034, #FF572E };

void setup() {
  size(800,800);
  background(255);
  noStroke();
}

void draw() {
}

// Mouse pressionado e arrastado:
void mouseDragged() {
  
  int indice = round(random(c.length-1));
  fill(c[indice]);
  
  float raio = dist(mouseX,mouseY,pmouseX,pmouseY);
  
  ellipse(mouseX,mouseY,raio,raio);
  ellipse(mouseX,height-mouseY,raio,raio);
  ellipse(width-mouseX,mouseY,raio,raio);
  ellipse(width-mouseX,height-mouseY,raio,raio);
}