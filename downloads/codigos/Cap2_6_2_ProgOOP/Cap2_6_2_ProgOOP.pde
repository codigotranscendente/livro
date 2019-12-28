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

// Declaração da classe:

class Circulo {
  // Atributos:
  float posX, posY;
  float raio;
  color cor;
  
  // Construtor:
  Circulo(float _posX, float _posY, float _raio, color _cor) {
    posX = _posX;
    posY = _posY;
    raio = _raio;
    cor = _cor;
  }
  
  // Métodos:
  void exibir() {
    fill(cor);
    ellipse(posX,posY,raio,raio);
  }
}



// Programa Principal:

// Total de circulos: 31 (horiz) * 10 (vert):
Circulo[] circ = new Circulo[310];

void setup() {
  size(700,200);
  background(255);
  
  // Necessária uma variável de índice para controlar a sequencia de preenchimento do
  // vetor uma vez que ele se encontra dentro de uma estrutura de repetição aninhada.
  int indice = 0;
  
  // Instanciação dos objetos da classe:
  for(int i = 0; i < 31; i++) {
    for(int j = 0; j < 10; j++) {
      color corCirc = color(180-50*(j-2),50*(j-3),j*25);
      circ[indice] = new Circulo(i*22.3+15,j*25+12.5*(i%2),25-abs(i-15),corCirc);
      indice++;
    }
  }
  
  // Etapa de exibição dos círculos:
  for(int i = 0; i < indice - 1; i++) {
    circ[i].exibir();
  }
  
  println("Posição X,Y do círculo número 1: " + circ[0].posX + ", " + circ[0].posY);
  println("Tamanho do raio do círculo número 42: "+ circ[41].raio);
}