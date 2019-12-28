/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 4 - Seção 4.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Número de pontas e pontos da estrela:
int pontas = 5, nbr = 2*pontas;

// Raio externo e interno:
float re = 100, ri = 0.5*re;

// Giro da estrela (animação):
float incremento = 0;

void setup() {
  size(300,300);
  background(255);
}

void draw() {
  background(255);
  
  // Coordenadas dos pontos que compõem a estrela:
  float[] x = new float[nbr];
  float[] y = new float[nbr];
  
  for(int i = 0; i < nbr; i++) {
    float r = 0;
    
    //Se o ponto for par temos o raio externo, se ímpar, o interno:
    if(i%2 == 0) {
      r = re;
    }
    else {
      r = ri;
    }
    
    x[i] = width/2 + r*cos(incremento + radians(i*360.0/nbr));
    y[i] = height/2 + r*sin(incremento + radians(i*360.0/nbr));
  }
  
  // Desenho da estrela:
  for(int i = 1; i < nbr; i++) {
    line(x[i-1],y[i-1],x[i],y[i]);
  }
  // A última ligação deve ser feita fora da repetição,
  // unindo o primeiro com o último ponto:
  line(x[0],y[0],x[nbr-1],y[nbr-1]);
  
  incremento += 0.01;
}