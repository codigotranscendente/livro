/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.4.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void draw() {
}

// Interrupção por tecla pressionada:
void keyPressed() {
  background(255);
  noStroke();
  
  // A variável que é "testada" em cada um dos casos da
  // estrutura switch é a tecla que foi pressionada para
  // iniciar a interrupção.
  switch(key) {
    
    // Mesmo que: if(key == 'a')
    case 'a':
      fill(255,0,0);
      rect(25,25,50,50);
    break;
    
    // Mesmo que: if(key == 's')
    case 's':
      fill(0,255,0);
      ellipse(50,50,50,50);
    break;
    
    // Mesmo que: if(key == 'd')
    case 'd':
      fill(0,0,255);
      triangle(50,25,25,75,75,75);
    break;
    
    // Mesmo que: if(key == 'f')
    case 'f':
      fill(0,0,0);
      quad(50,25,25,50,50,75,75,50);
    break;
    
  }
}