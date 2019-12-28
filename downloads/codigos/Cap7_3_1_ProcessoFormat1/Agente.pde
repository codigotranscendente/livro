class Agente {
  // Atributos:
  float posXA, posYA, posX, posY;
  float angulo;
  float passo;
  
  // Construtor:
  Agente(float _posX, float _posY, float _angulo, float _passo) {
    posX = _posX;
    posXA = posX;
    posY = _posY;
    posYA = posY;
    angulo = _angulo;
    passo = _passo;
  }
  
  // Métodos:
  void atualizar() {
    // Grava a posição anterior:
    posXA = posX;
    posYA = posY;
    // Atualiza a posição atual:
    posX = posX + passo*cos(radians(angulo));
    posY = posY + passo*sin(radians(angulo));
  }
  
  void detectaBordas()
  {
    // Se o agente sair da região de limite, altera sua direção de movimento:
    if(posX < 0 || posX > width || posY < 0 || posY > height) {
      angulo = random(360);
    }
      
    // Se o agente sair da região de limite, ele volta para a região:
    if(posX < 0) {
      posX = 0;
    }
    else {
      if(posX > width) {
        posX = width;
      }
      else {
        if(posY < 0) {
          posY = 0;
        }
          else {
            if(posY > height) {
            posY = height;
          }
        }
      }
    }  
  }
  
  void exibirComoPonto() {
    stroke(0);
    strokeWeight(2);
    point(posX,posY);
  }
  
  void exibirComoReta() {
    stroke(0);
    strokeWeight(1);
    line(posXA,posYA,posX,posY);
  }
}