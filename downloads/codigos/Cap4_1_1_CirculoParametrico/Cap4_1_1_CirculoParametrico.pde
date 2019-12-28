/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 4 - Seção 4.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(200,200);
  background(255);
  
  // Coordenadas dos centro de círculo e valor do raio:
  float centroX = 100, centroY = 100;
  float raio = 50;
  
  // O círculo será desenhado através de linhas, precisamos dos pontos anteriores:
  float xAnterior = centroX + raio*cos(0);
  float yAnterior = centroY + raio*sin(0);
  
  // Número de pontos que irão compor o círculo:
  int div = 5; // Pentágono
  //int div = 10; // Decágono
  //int div = 50; // Pentacontágono
  
  // Círculo parametrizado:
  for(int i = 0; i < div + 1; i++) {
    // Equações do círculo:
    float x = centroX + raio*cos(radians(i*360.0/div));
    float y = centroY + raio*sin(radians(i*360.0/div));
    
    line(x,y,xAnterior,yAnterior);
    
    xAnterior = x;
    yAnterior = y;
  }
  
  // Círculo pelo Processing:
  noFill();
  stroke(0,40);
  strokeWeight(2);
  ellipse(centroX,centroY,2*raio,2*raio);
}