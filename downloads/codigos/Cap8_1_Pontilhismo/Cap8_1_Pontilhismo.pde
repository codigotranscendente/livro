/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 8 - Seção 8.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Estrutura de dados que armazena arquivos de imagem:
PImage imagem;

// Tamanho do ponto:
float r = 5;

// Número de pontos que compõem o pontilhismo:
int n = 100000;

void setup() {
  size(360,300);
  background(255);
  noStroke();
  
  // Carrega o arquivo de foto que está dentro da pasta "data":
  imagem = loadImage("Imagem.jpg");
  
  for(int i = 0; i < n; i++) {
      // Escolhe um pixel aleatório da imagem carregada e obtém sua cor:
      int x = round(random(imagem.width-1));
      int y = round(random(imagem.height-1));
      color c = imagem.get(x,y);
      
      // Colore e posiciona o ponto (representado por uma elipse)
      // no local em que foi amostrado:
      fill(c);
      ellipse(x,y,r,r);
  }
}
