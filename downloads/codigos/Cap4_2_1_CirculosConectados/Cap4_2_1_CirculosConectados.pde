/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 4 - Seção 4.2
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(400,400);
  background(255);
  // Diminui o número de quadros por segundo para 20.
  frameRate(20);
}

void draw() {
  float centroX = 200, centroY = 200;
  float raio = 160, vel = 0.5;
  int div = 50;
  
  // Passo, ou quantos graus serão "andados" por frame do Processing:
  float passo = 360.0/div;
  
  // Primeiro Círculo:
  float x1 = centroX + raio*cos(radians(frameCount*passo));
  float y1 = centroY + raio*sin(radians(frameCount*passo));
  
  // Segundo Círculo - Defasado 180°e animado com metade do passo do primeiro:
  float x2 = centroX + raio*cos(radians(180 + vel*frameCount*passo));
  float y2 = centroY + raio*sin(radians(180 + vel*frameCount*passo));
  
  strokeWeight(2);
  
  // Pontos vermelhos: Círculo 1.
  stroke(255,0,0);
  point(x1,y1);
  
  // Pontos azuis: Círculo 2.
  stroke(0,0,255);
  point(x2,y2);
  
  // Conexão entre os pontos dos dois círculos:
  strokeWeight(0);
  stroke(0,255,0);
  line(x1,y1,x2,y2);
}