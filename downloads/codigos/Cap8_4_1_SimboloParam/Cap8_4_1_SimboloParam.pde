/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 8 - Seção 8.4
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(300,300);
  background(255);
  desenhaSimbolo(100);
}

// Função para desenhar o símbolo: 
// Regra: Três triângulos inscritos em um círculo 
void desenhaSimbolo(float _raio) {
  noFill();
  
  ellipse(width/2,height/2,2*_raio,2*_raio);
  
  // Como são três triângulos, são necessárias três repetições
  for(int j = 0; j < 3; j++) {
    
    // Armazena os ângulos dos pontos dos triângulos:
    float[] a = new float[3];
    
    // Cada triângulo é composto por três pontos, posicionados na
    // superfície de um círculo com ângulos aleatórios (0 a 360 graus)
    for(int i = 0; i < 3; i++) {
      a[i] = radians(random(360));
    }
    
    // Desenha o triângulo
    triangle(width/2  + _raio*cos(a[0]), // Ponto 1, coord. x
             height/2 + _raio*sin(a[0]), // Ponto 1, coord. y
             width/2  + _raio*cos(a[1]), // Ponto 2, coord. x
             height/2 + _raio*sin(a[1]), // Ponto 2, coord. y
             width/2  + _raio*cos(a[2]), // Ponto 3, coord. x
             height/2 + _raio*sin(a[2])  // Ponto 3, coord. y
    );
  }
}