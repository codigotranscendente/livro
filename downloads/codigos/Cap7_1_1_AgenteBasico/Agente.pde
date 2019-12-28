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