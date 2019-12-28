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
      fill(0);
      if(i%2 == 0 && j%2 == 0) {
        triangle(i*lado,j*lado,i*lado + lado,j*lado,i*lado + lado,j*lado + lado);
      }
      if(i%2 != 0 && j%2 == 0) {
        triangle(i*lado,j*lado,i*lado,j*lado + lado,i*lado + lado,j*lado + lado);
      }
      if(i%2 == 0 && j%2 != 0) {
        triangle(i*lado + lado,j*lado,i*lado + lado,j*lado + lado,i*lado, j*lado + lado);
      }
      if(i%2 != 0 && j%2 != 0) {
        triangle(i*lado + lado,j*lado,i*lado,j*lado,i*lado,j*lado + lado);
      }
    }
  }
}

// Obs.: Outros padrões podem ser obtidos se você alterar os condicionais. Substitua:
// if(i%2 == 0 && j%2 == 0)
// if(i%2 != 0 && j%2 == 0)
// if(i%2 == 0 && j%2 != 0)
// if(i%2 != 0 && j%2 != 0)
// Por:
// if(i%2 == 1 && j%2 == 0)
// if(i%2 != 0 && j%2 == 1)
// if(i%2 == 1 && j%2 != 0)
// if(i%2 != 0 && j%2 != 1)