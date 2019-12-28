/*
 * Livro: O Código Transcendente
 * por Mateus Paresqui Berruezo.
 * Capítulo 8 - Seção 8.2
 * 
 * Parte do repositório encontrado em:
 * https://github.com/codigotranscendente/livro
 *
 * MIT License. Pode ser consultada em:
 * https://opensource.org/licenses/MIT
 */

// Biblioteca e variáveis Minim
import ddf.minim.*;
Minim minim;
AudioPlayer audio;

void setup() {
  size(300, 300);
  background(255);
  
  // Cria o objeto minim - obrigatório para o funcionamento correto:
  minim = new Minim(this);
  
  // Carrega o arquivo de áudio que está dentro da pasta "data" e faz o playback:
  audio = minim.loadFile("Audio.mp3", 1024);
  audio.loop();
}

void draw() {
  // O sinal de áudio em cada instante é dividido em 1024 amostras com
  // valores entre -1 e 1 para cada canal (direito e esquerdo).
  // Aqui fazemos uma média dos canais e armazenamos o valor para
  // posteriormente desenhar o padrão.
  float[] sinalAudio = new float[1024];
  for(int i = 0; i < sinalAudio.length - 1; i++) {
    float mediaAtual = (audio.left.get(i) + audio.right.get(i))/2.0;
    sinalAudio[i] = mediaAtual;
  }
  
  strokeWeight(2);
  stroke(random(255),random(255),random(255));
  
  // Transforma a amplitude RMS do sinal para pontos em um círculo:
  float divAngulo = 360.0/1024.0;
  for(int i = 0; i < sinalAudio.length - 1; i++) {
    float x1 = width/2 + (80 + 80*sinalAudio[i])*cos(i*radians(divAngulo));
    float y1 = height/2 + (80 + 80*sinalAudio[i])*sin(i*radians(divAngulo));
    point(x1,y1);
  }
}
