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
  arvore(width/2,height,100,-90);
}

void arvore(float xi, float yi, float comp, float angulo) {
  
  // Condição de parada da recursividade:
  // Comprimento do ramo menos que 2 pixels.
  if(comp > 2) {
    
    // Cálculo do ponto final do ramo e seu desenho:
    float xf = xi + cos(radians(angulo))*comp;
    float yf = yi + sin(radians(angulo))*comp;
    line(xi,yi,xf,yf);
    
    // Cada novo ramo será 60% do tamanho do original:
    float novoComp = 0.6*comp;
    
    // São duas retas, uma inclinada a +45°da reta original
    // e outra a -45°da reta original:
    float novoAnguloR1 = angulo + 45;
    float novoAnguloR2 = angulo - 45;
    
    // Recursividade: Esta função faz duas chamadas
    // a ela própria (com novos argumentos) para desenhar
    // outras 2 retas.
    arvore(xf,yf,novoComp,novoAnguloR1);
    arvore(xf,yf,novoComp,novoAnguloR2);
    
    }
}