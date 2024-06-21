//reinicia variables a estado original
void resetVariables() {
  circleColor = color(0);  //reinicia el color de los círculos a negro
}

void keyPressed() {
  //reinicia el programa con la tecla espacio
  if (key == ' ') {
    resetVariables();
  }
}
