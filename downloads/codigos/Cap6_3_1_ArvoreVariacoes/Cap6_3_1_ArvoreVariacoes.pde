/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 6 - Seção 6.2.1
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
}

void draw() {
  background(255);
  
  // Angulo do ramo vai de 0°a 180°
  // de acordo com a posição horizontal do mouse:
  float aRamo = map(mouseX,0,width,0,180);
  
  arvore(width/2,height,100,-90,aRamo);
}
  
void arvore(float xi, float yi, float comp, float angulo, float anguloRamo) {
  if(comp > 2) {
    
    // O comprimento vai de 100 a 2, e a espessura de 10 a 0.
    // É necessário que seja decrescente para que ocorra o afinamento.
    float espessura = map(comp,100,2,10,0);
    strokeWeight(espessura);

    float xf = xi + cos(radians(angulo))*comp;
    float yf = yi + sin(radians(angulo))*comp;
    line(xi,yi,xf,yf);
    
    float novoComp = 0.6*comp;
    float novoAnguloR1 = angulo + anguloRamo;
    float novoAnguloR2 = angulo - anguloRamo;
    
    // Um ramo diminui 20% do comprimento originário,
    // enquanto o outro diminui 50%:
    float novoCompR1 = 0.80*comp;
    float novoCompR2 = 0.50*comp;
    
    arvore(xf,yf,novoCompR1,novoAnguloR1,anguloRamo);
    arvore(xf,yf,novoCompR2,novoAnguloR2,anguloRamo);
  }
}