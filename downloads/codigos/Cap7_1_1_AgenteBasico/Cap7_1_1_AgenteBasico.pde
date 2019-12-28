/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 7 - Seção 7.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

Agente[] ags;

void setup() {
  size(300,200);
  background(255);
  
  int numAgentes = 10;
  
  ags = new Agente[numAgentes];
  for(int i = 0; i < numAgentes; i++) {
    // Distribui os agentes aleatoriamente pela tela:
    ags[i] = new Agente(random(width),random(height),random(360),2);
}

}
void draw() {
  for(int i = 0; i < ags.length; i++) {
    // Para cada agente declarado, atualiza e exibe ele:
    ags[i].atualizar();
    ags[i].exibirComoReta();
  }
}