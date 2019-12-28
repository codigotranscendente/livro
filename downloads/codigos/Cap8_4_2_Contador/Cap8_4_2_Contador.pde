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

int contador = 0;

void setup() {
  size(310,640);
  textAlign(CENTER);
}

void draw() {
  background(204);
  
  // Desenha os botões de interface:
  fill(255);
  rect(10,160,290,150);
  rect(10,320,290,150);
  rect(10,480,290,150);
  
  // Escreve os textos do aplicativo:
  fill(0);
  textSize(40);
  text("Contador: ", 155, 64);
  text(contador, 155, 125);
  textSize(100);
  text("+",155,260);
  text("-",155,425);
  text("0",155,590);
}

// Trata os cliques sobre os botões (eixo x desconsiderado):
void mousePressed() {
  if(mouseY > 160 && mouseY < 310) {
    contador++;
  }
  else {
    if(mouseY > 320 && mouseY < 470) {
      contador--;
    }
    else {
      if(mouseY > 480 && mouseY < 630) {
        contador = 0;
      }
    }
  }
}