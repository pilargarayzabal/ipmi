//función propia con parámetros que RETORNA un valor
void drawMovingCircle(float x, float y) {
  float distance = dist(mouseX, mouseY, x, y);
  float size = map(distance, 0, width, circleSize, -25);
  fill(circleColor);  //pone el color del círculo
  ellipse(x, y, size, size);  //circulito
}


// función propia con parámetros NO retorna un valor
//calcula el tamaño de circulo en funcion de la distancia
float calculateCircleSize(float distance) {
  return map(distance, 0, width, circleSize, 0);
}
