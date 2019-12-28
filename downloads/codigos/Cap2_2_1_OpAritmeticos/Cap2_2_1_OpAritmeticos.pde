/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.2.1
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// A declaração de múltiplas variáveis por linha pode ser feita desde que
// todas possuam o mesmo tipo e estejam separadas por vírgula (,). No final 
// da última declaração deve existir um ponto e vírgula (;).
int num1 = 10, num2 = 5, num3 = 3;

int result1 = (num1 + num2) * num3;
// Será igual a 15*3, ou 45.
println(result1); 

int result2 = (num1 * num3) / (num2 * num3);
// Será igual a 30/15, ou 2.
println(result2); 

num1++;
// Exibirá 11, que é o resultado de 10 + 1
println(num1); 

num2--;
// Exibirá 4, que é o resultado de 5 - 1
println(num2); 

// Exibirá -3 que é o resultado de -1*3
println(-num3); 