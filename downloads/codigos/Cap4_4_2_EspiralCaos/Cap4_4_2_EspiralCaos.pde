/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 4 - Seção 4.4
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
  
  // Raio inicial e ângulo girado a cada iteração:
  float r = 0, passo = 5, numVoltas = 15;
  
  // Número de repetições:
  float numRep = 360*(numVoltas/passo);
  
  // Ponto atual e anterior:
  float x, y, xa = width/2, ya = height/2;
  
  for(int i = 0; i < numRep; i++) {
    
    // Desenho com Random - Usar apenas um.
    //x = width/2 + random(0.9,1.1)*r*cos(radians(i*passo));
    //y = height/2 + random(0.9,1.1)*r*sin(radians(i*passo));
    
    // Desenho com Noise - Usar apenas um.
    x = width/2 + 1.5*noise(i/30.0)*r*cos(radians(i*passo));
    y = height/2 + 1.5*noise(i/30.0)*r*sin(radians(i*passo));

    line(xa,ya,x,y);
    xa = x;
    ya = y;
    r += 0.1;
  }
}