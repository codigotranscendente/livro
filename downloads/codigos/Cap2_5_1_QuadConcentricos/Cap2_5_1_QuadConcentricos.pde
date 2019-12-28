/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.5
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(300,300);
  background(255);
  
  // Remove o preenchimento de todas as figuras:
  noFill();
  
  float x = 0, y = 0, lado = 0;
  
  // Variável de controle da repetição:
  int contador = 0;
  
  while(contador < 50) {
    lado = lado + 5;
    x = width/2 - lado/2;
    y = height/2 - lado/2;
    
    rect(x,y,lado,lado);
    
    // Incrementa a variável de controle para evitar a repetição infinita:
    contador++;
  }
}