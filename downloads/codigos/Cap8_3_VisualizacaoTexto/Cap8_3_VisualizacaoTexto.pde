/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 8 - Seção 8.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Arquivo de texto:
String conteudoArquivo[];
char linhaArquivo[];
int indiceLinha = 0, indiceLetra = 0;

float x = 0,  y = 25;

void setup() {
  size(800,200);
  background(255);
  
  // Carrega o arquivo de texto que está dentro da pasta "data":
  conteudoArquivo = loadStrings("Texto.txt");
  
  // Transfere a linha do arquivo da posição "indiceLinha" para um vetor 
  // contendo os caracteres dela:
  linhaArquivo = conteudoArquivo[indiceLinha].toCharArray();
}

void draw() {
  // Escreve a letra na tela:
  fill(0);
  text(linhaArquivo[indiceLetra],x,y);
  
  // Atualiza as variáveis de desenho:
  x += 7;
  y += 10*(0.5 - noise(x));
  
  // Se chegar ao final da janela, volta para o início:
  if(x >= width) {
    x = 0;
  }
  
  // Atualiza a posição da próxima letra da linha do arquivo:
  indiceLetra++;
  
  // Se chegar ao final da linha do arquivo, pula para a próxima:
  if(indiceLetra >= linhaArquivo.length) {
    indiceLetra = 0;
    indiceLinha++;
    linhaArquivo = conteudoArquivo[indiceLinha].toCharArray();
  }
}