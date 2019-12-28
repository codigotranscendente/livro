/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Parametrização das variáveis mínimas para o desenho de
// um quadrado:
// Posições X e Y de um de seus vértices e tamanho de seu lado.
float posX = 25;
float posY = 25;
float ladoQ = 50;

// Desenho da figura:
line(posX, posY, posX + ladoQ, posY);
line(posX + ladoQ, posY, posX + ladoQ, posY + ladoQ);
line(posX + ladoQ, posY + ladoQ, posX, posY + ladoQ);
line(posX, posY + ladoQ, posX, posY);