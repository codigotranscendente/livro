/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.1.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(300,200);
}

void draw() {
  // Exibe, no console, o comprimento e altura da janela de saída:
  println(width);
  println(height);
  // Exibe, no console, a posição (x,y) do mouse:
  println("Posição x do mouse: " + mouseX);
  println("Posição y do mouse: " + mouseY);
}

// Obs.: A concatenação de variáveis do tipo String para formar uma frase
// pode ser feita pelo operador de adição (+).
// Por exemplo, se você quiser escrever "Olá Mundo!" no console, pode usar:
// println("Olá Mundo!");
// Ou, separando as palavras:
// println("Olá" + " " + "Mundo" + "!");