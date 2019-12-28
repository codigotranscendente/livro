/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 7 - Seção 7.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */
 
Agente[] ags;

void setup() {
  size(700,200);
  background(255);
  
  int numAgentes = 100;
  ags = new Agente[numAgentes];
  
  for(int i = 0; i < numAgentes; i++) {
    // 50% de chance do agente ir para cima ou para baixo.
    float angulo;
    
    if(random(1) < 0.5) {
      angulo = -90 + random(-10,10);
    }
    else {
      angulo = 90 + random(-10,10);
    }
    
    ags[i] = new Agente(random(width),height/2,angulo,1);
  }
}


void draw() {
  for(int i = 0; i < ags.length; i++) {
    // Para cada agente declarado, verifica sua posição, atualiza e exibe ele:
    //ags[i].detectaBordas();
    ags[i].atualizar();
    //ags[i].exibirComoReta();
    
    
    for(int j = i + 1; j < ags.length; j++) {
      float distMaxima = 50;
      float distEntreAgentes = dist(ags[i].posX,ags[i].posY,ags[j].posX,ags[j].posY);
      
      // Se a distância entre os agentes for menor que 50 pixels,
      // conecta eles através de uma reta:
      if(distEntreAgentes < distMaxima) {
        
        // Quanto mais próximos, masi suave serão as linhas que conectam os agentes:
        int alpha = (int)map(distEntreAgentes,0,distMaxima,50,0);
        
        if(random(1) < 0.5) {
          stroke(255,alpha);
        }
        else {
          stroke(0,alpha);
        }
        
        line(ags[i].posX,ags[i].posY,ags[j].posX,ags[j].posY);
        
      }
    }
  }
}