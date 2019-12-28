/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.3.1
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
}

void draw() {
}

// Interrupção - Mouse pressionado e arrastado:
void mouseDragged() {
  
  // A função "dist" calcula a distância Euclidiana entre dois pontos. Ela é usada
  // aqui para calcular quanto o cursor do mouse foi movimentado entre frame passado
  // (pmouseX,pmouseY) e o frame atual (mouseX,mouseY). Quanto mais rápido você
  // movimentar o mouse, maior será a distância entre um frame e outro, e maior o
  // valor retornado por "dist".
  float raio = dist(mouseX,mouseY,pmouseX,pmouseY);
  
  ellipse(mouseX,mouseY,raio,raio);
}