/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.6.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Variáveis para armazenamento de dados dos círculos:
float[] posX;
float[] posY;
float[] raio;
color[] corC;

void setup() {
  size(700,200);
  background(255);
  
  // Total de circulos: 31 (horiz) * 10 (vert):
  posX = new float[310];
  posY = new float[310];
  raio = new float[310];
  corC = new color[310];
  
  // Necessária uma variável de índice para controlar a sequencia de preenchimento do
  // vetor uma vez que ele se encontra dentro de uma estrutura de repetição aninhada.
  int indice = 0;
  
  for(int i = 0; i < 31; i++) {
    for(int j = 0; j < 10; j++) {
      color corCirc = color(180-50*(j-2),50*(j-3),j*25);
      
      // Guarda dados dos círculos para consultas posteriores:
      posX[indice] = i*22.3 + 15;
      posY[indice] = j*25+12.5*(i%2);
      raio[indice] = 25-abs(i-15);
      corC[indice] = corCirc;
      
      indice++;
    }
  }
  
  // Etapa de exibição dos círculos:
  for(int i = 0; i < indice - 1; i++) {
    exibirCirculo(i);
  }
  
  println("Posição X,Y do círculo número 1: " + posX[0] + "," + posY[0]);
  println("Tamanho do raio do círculo número 42: " + raio[41]);
}
  
void exibirCirculo(int _c) {
  fill(corC[_c]);
  ellipse(posX[_c],posY[_c],raio[_c],raio[_c]);
}