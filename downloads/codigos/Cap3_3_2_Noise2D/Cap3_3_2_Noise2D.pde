/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 3 - Seção 3.3
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

void setup() {
  size(300,150);
  background(255);
  
  // Armazena as propriedades do ruído. O ruído aqui será propriamente bidimendional
  // portanto são necessárias duas variáveis para fazer seu controle.
  float amplitudeRuido = 0.05;
  float ruidoX = 0;
  float ruidoY = 100;
  
  // Varre todos os pixels da janela e os preenche com uma cor ruidosa:
  for(int i = 0; i < width; i++) {
    for(int j = 0; j < height; j++) {
      
      // A cada passo em Y (corresponde à variável j), devemos alterar o valor de ruidoY para 
      // não produzir números aleatórios iguais.
      ruidoY += amplitudeRuido;
      
      // Por ser um ruído bidimensional, a função noise utilizará dois argumentos.
      stroke(color(255*noise(ruidoX,ruidoY)));
      point(i,j);
    }
    
    // Como a repetição de j terminou é necessário reiniciar a variável ruidoY para seu valor original.
    // Se você não fizer isso ocorrerá um "desalinhamento" do ruído, criando uma textura mecânica.
    // Experimente comentar a linha abaixo para ver o resultado.
    ruidoY = 100;
    
    // A cada passo em X (corresponde à variável i), devemos alterar o valor de ruidoX para 
    // não produzir números aleatórios iguais.
    ruidoX += amplitudeRuido;
  }
}