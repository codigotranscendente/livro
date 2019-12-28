/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.2.4
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Os operadores de relação fazem a comparação entre variáveis:
// (>, >=, <, <=, ==, !=)

// Os operadores lógicos fazem a concatenação de comparações: 
// (&&, ||, !)

// Exemplo de operação de relação composta:
boolean comp = ((4 > 5) || (5 <= 6)) && !(10 < 20);

// Por partes:
// (4 > 5) -> False
// (5 <= 6) -> True
// (False || True) -> True
// (10 < 20) -> True, mas temos uma negação, logo !(10 < 20) -> False
// Portanto:
// (True && False) -> False
println(comp);