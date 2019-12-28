/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.5.2
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
    
  size(600,180);
  background(255);
  
  // Tamanho do bloco da divisão da janela de saída - Em pixels:
  float lado = 30;
  
  // Calcula o número de blocos na horizontal:
  int numBlocosH = ceil(width/lado);
  
  // Calcula o número de blocos na vertical:
  int numBlocosV = ceil(height/lado);
  
  for(int i = 0; i < numBlocosH; i++) {
    for(int j = 0; j < numBlocosV; j++) {
      if(i%2 == 0) { // Se i é par desenha uma diagonal, se ímpar, desenha a outra. Comente a linha para tentar outros padrões.
      //if(i*j%2 == 0) { // Outro tipo de padrão. Utilize apenas um por vez.
      //if(i*j%3 == 0) { // Outro tipo de padrão. Utilize apenas um por vez.
      //if((i+j)%3 == 0) { // Outro tipo de padrão. Utilize apenas um por vez.
      //if(((i%2)+(j%3))%2 == 0) { // Outro tipo de padrão. Utilize apenas um por vez.
        line(i*lado,j*lado,i*lado + lado,j*lado + lado);
      }
      else {
        line(i*lado + lado,j*lado,i*lado,j*lado + lado);
      }
    }
  }
}