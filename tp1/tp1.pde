
PImage paisaje;


void setup() {
    noStroke();
colorMode(RGB, 66, 172, 224);
for (int i = 0; i < 800; i++) {
  for (int j = 0; j < 400; j++) {
    stroke(i, j, 0);
    point(i, j);
  }
}
  size(800, 400);
  paisaje = loadImage ("paisaje.jpg");
 
  
}

void draw() {

  println( mouseX + "/" + mouseY );
  noStroke(); //LINEA DEL MAR
  fill(21, 132, 185); //color del mar
  rect(400, 142, 800, 22); //MAR DE FONDO
  fill(#336C3D);
  rect(400, 160, 800, 400);
  
  fill(#338B42);
  ellipse(400, 400, 800, 500);
  
  stroke(1);
  fill(#3AA54D);
  ellipse(800, 400, 900, 400);
  
image( paisaje, 0, 0 );
}
