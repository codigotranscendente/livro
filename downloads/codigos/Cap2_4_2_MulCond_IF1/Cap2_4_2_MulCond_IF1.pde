/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.1.4
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void draw() {
}

// Interrupção por tecla pressionada.
void keyPressed() {
  background(255);
  noStroke();
  
  if(key == 'a') {
    fill(255,0,0);
    rect(25,25,50,50);
  }
    else {
    if(key == 's') {
      fill(0,255,0);
      ellipse(50,50,50,50);
    }
      else {
      if(key == 'd') {
        fill(0,0,255);
        triangle(50,25,25,75,75,75);
      }
      else {
        if(key == 'f') {
          fill(0,0,0);
          quad(50,25,25,50,50,75,75,50);
        }
      }
    }
  }
}