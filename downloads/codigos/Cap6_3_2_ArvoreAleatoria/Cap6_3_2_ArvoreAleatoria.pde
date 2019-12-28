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

  arvore(width/2,height,120,-90,35);
}
  
void arvore(float xi, float yi, float comp, float angulo, float anguloRamo) {
  if(comp > 2) {

    float xf = xi + cos(radians(angulo))*comp;
    float yf = yi + sin(radians(angulo))*comp;
    line(xi,yi,xf,yf);
    
    // Os novos ângulos dos ramos possuirão parcelas aleatórias:
    float novoAnguloR1 = angulo + random(anguloRamo);
    float novoAnguloR2 = angulo - random(anguloRamo);
    
    // O ramo diminui 30% do comprimento originário:
    float novoComp = 0.7*comp;
    
    arvore(xf,yf,novoComp,novoAnguloR1,anguloRamo);
    arvore(xf,yf,novoComp,novoAnguloR2,anguloRamo);
  }
  
}