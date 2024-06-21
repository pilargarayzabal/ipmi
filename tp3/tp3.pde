//https://www.youtube.com/watch?v=6HfHEJMkhpk
//Pilar Garayzabal 
//legajo 119036/5


void setup() {
  size(800, 400); 
  circleColor = color(0);
  noStroke();
  tiempodecambiodecolor = millis();  
  dibujo = loadImage ("dibujo.png");
   
}

void draw() {
  background(255); 
  image( dibujo, 0, 0 );
 
 //cuadricula de circulos
  for (int x = 400; x <= width; x += cuadriculaSize) {
    for (int y = 0; y <= height; y += cuadriculaSize) {
      drawMovingCircle(x, y); 
    }
  }
  
  // tiempo del cambio de color
  if (millis() - tiempodecambiodecolor > cambiodeColor && mousePressed) {
    if (mouseX >= 0 && mouseX <= width && mouseY >= 0 && mouseY <= height) {
      circleColor = color(random(255), random(255), random(255));  // cambia el color de los círculos
      tiempodecambiodecolor = millis();  // actualiza el tiempo del ultimo cambio de color

    }
  }
}
