/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 2 - Seção 2.1.2
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */
 
// Omitido o setup() e draw() uma vez que não queremos exibir nada na
// janela de saída.


// Declaração de variáveis:

// Método convencional:
float num1 = 1;
float num2 = 10;
float num3 = 5;
float num4 = 22;

// Vetores - Declaração separada da atribuição:
float[] num = new float[4];
num[0] = 1;
num[1] = 10;
num[2] = 5;
num[3] = 22;

// Vetores - Declaração já com a atribuição:
float[] nums = {1,10,5,22};

// Exibe o tamanho do vetor "nums" no console do PDE:
println("Tamanho do vetor nums: " + nums.length);