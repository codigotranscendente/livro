/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 3 - Seção 3.4
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Contador de número de quadrados da respectiva cor:
int vermelho = 0, verde = 0, azul = 0;

void setup() {
  size(800,300);
  background(255);
  noStroke();
  
  for(int i = 0; i < width/5; i++) {
    for(int j = 0; j < height/5; j++) {
      
      // Número qualquer entre 0 e 1
      float prob = random(1);
      
      if(prob < 0.2) { // 20% de chance do quadrado ser pintado de vermelho.
        fill(255,0,0);
        vermelho++;
      }
      else {
        if(prob < 0.5) { // 30% de chance do quadrado ser pintado de verde.
          fill(0,255,0);
          verde++;
        }
        else { // 50% de chance do quadrado ser pintado de azul.
          fill(0,0,255);
          azul++;
        }
      }
      rect(i*5,j*5,5,5);
      
    }
  }
  
  int total = vermelho+verde+azul;
  
  println("Número total de quadrados: "+ total);
  println("Percentual de quadrados vermelhos: "+ 100.0*vermelho/total + "%");
  println("Percentual de quadrados verdes: "+ 100.0*verde/total + "%");
  println("Percentual de quadrados azuis: "+ 100.0*azul/total + "%");
}