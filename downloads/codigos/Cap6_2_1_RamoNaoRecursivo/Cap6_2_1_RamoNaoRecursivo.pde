/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 6 - Seção 6.2
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(500,500);
  background(255);
  
  float[] pontos = new float[2];
  
  // Gera um dos ramos da figura 6.8d:
  // Iteração 1.
  pontos = arvore(width/2,height,100,-90);
  // Iteração 2: 60% menor e inclinado 45°em relação à Iteração 1.
  pontos = arvore(pontos[0],pontos[1],100*0.6,-90 + 45);
  // Iteração 3: 60% menor e inclinado 45°em relação à Iteração 2.
  pontos = arvore(pontos[0],pontos[1],100*0.6*0.6,-90 + 45 + 45);
  // Iteração 4: 60% menor e inclinado 45°em relação à Iteração 3.
  pontos = arvore(pontos[0],pontos[1],100*0.6*0.6*0.6,-90 + 45 + 45 + 45);
}
  
  
float[] arvore(float xi, float yi, float comp, float angulo) {
  
  // Fórmula básica para desenho de reta angulada:
  float xf = xi + cos(radians(angulo))*comp;
  float yf = yi + sin(radians(angulo))*comp;
  line(xi,yi,xf,yf);
  
  // Esta função retorna os pontos final do ramo:
  float[] posFinal = {xf,yf};
  
  return posFinal;
}