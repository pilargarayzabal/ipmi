//Pilar Garayzabal 
//legajo 119036/5




int estado, movimiento, lines;  //variable global de texto
//Boton Circular
int opacidad =0;
int direccion=1;
//font
PFont myFont, st;
String texto0, texto1, texto2, texto3, texto4, texto5, texto6, texto7;

//imagenes
PImage stardew, gallinita, granjita, pueblito, abuelito, carta, joja, horas, casamiento;
//personajes..
PImage alex, gus, jas, abigail, abue, caroline, demetrius, elliott, emily, george, haley, harvy, jodi, leah, lewis, linus, mago, marnie, maru, pam, penny, pierre, robin, sam, sebas, shane, vicent, willy;

void setup() {
  background(#C4922D);
  size(640, 480);
  
  //imagenes
  gallinita = loadImage("gallinita.png");
  stardew = loadImage("stardew.png");
  granjita = loadImage("granjita.png");
  pueblito = loadImage("pueblito.png");
  joja = loadImage("joja.png");
  abuelito = loadImage("abuelito.jpg");
  carta = loadImage("carta.jpg");
  pueblito = loadImage("pueblito.png");
  casamiento = loadImage("casamiento.png");
  horas = loadImage("horas.png");
  //personajeeeeeeeees
  alex = loadImage("alex.jpg");
  jas = loadImage("jas.jpg");
  gus = loadImage("gus.jpg");
  abigail = loadImage("abigail.jpg");
  abue = loadImage("abue.jpg");
  caroline = loadImage("caroline.jpg");
  demetrius = loadImage("demetrius.jpg");
  elliott = loadImage("elliott.jpg");
  emily = loadImage("emily.jpg");
  george = loadImage("george.jpg");
  haley = loadImage("haley.jpg");
  harvy = loadImage("harvy.jpg");
  jodi = loadImage("jodi.jpg");
  leah = loadImage("leah.jpg");
  lewis = loadImage("lewis.jpg");
  linus = loadImage("linus.jpg");
  mago = loadImage("mago.jpg");
  marnie = loadImage("marnie.jpg");
  maru = loadImage("maru.jpg");
  pam = loadImage("pam.jpg");
  penny = loadImage("penny.jpg");
  pierre = loadImage("pierre.jpg");
  robin = loadImage("robin.jpg");
  sam = loadImage("sam.jpg");
  sebas = loadImage("sebas.png");
  shane = loadImage("shane.jpg");
  vicent = loadImage("vicent.jpg");
  willy = loadImage("willy.jpg");
  estado = 1;
  
  
  //texto
  myFont = loadFont("Tahoma-Bold-100.vlw");
  textFont(myFont); 
  texto0 = "(toca la gallina para empezar)";
  texto1 = "Stardew Valley es un juego de simulación de granja\n que se lanzó el 26 de febrero de 2016.";
  texto2 = "En Stardew Valley, el jugador toma el rol de un personaje\n que se encuentra atrapado en un trabajo de oficina y"; 
  texto3 = "para escapar de él se va a vivir a la granja de su abuelo,\n la cual se encuentra en ruinas.";
  texto4 = "La granja se encuentra ubicada\n en un lugar llamado Pueblo pelicano.";
  texto5 = "donde te encontrarás con muchos vecinos del pueblo,\n con quienes podes entablar una amistad e incluso contraer matrimonio\n con algunos de los personajes solteros.";
  texto6 = "Para mi es uno de los mejores juegos disponibles en steam\n en el que tengo 116 horas y 10 partidas diferentes.\n Es un juego encantador y de bajos recursos con varias cosas para hacer. :3";
  texto7 = "GRACIAS POR VER!!!!"; 
  fill(#9B623B);
      textSize(15);
      text(texto0, 201, 350);
}

void draw() {
  //saber las coordenadas.
  println( mouseX + "/" + mouseY ); 
movimiento = frameCount;
  
//BOTON DE GALLINA
if ( estado == 1 ) {  
    image( gallinita, 217, 133, 200, 200); 
 } 
 
 if ( estado == 2 ){ 
 image( stardew, 0, 0);
 if ( frameCount/60 >= 5 ){
   frameCount = 0;
 estado = 3;
 }
 }
 
 //diapo de la granjita.
 if (estado == 3) {
   image(granjita, 0, 0);
      fill(0);
   textSize(30.5);
   text(texto1, 57, 130, 500, 200);
   fill(#1DDEB9);
   textSize(30);
   text(texto1, 60, 133, 500, 200);
   if ( frameCount/60 >= 5 ){
     frameCount = 0;
     estado = 4;
   }
}

//diapo de jojacola.
if (estado == 4) {
image(joja, 0, 0);
textAlign(CENTER,CENTER);
opacidad += 10 * direccion;
if((opacidad < 0) || (opacidad > 555)) {
  direccion = -direccion;
}
fill(0, opacidad);
text(".", 4, 60);
textSize(30);
text(texto2, 60, 133, 500, 200);
if(frameCount/60>=2){
  frameCount = 0;
      estado = 5;

}
}

//diapo abuelito y cartita :D
if (estado==5) {
  imageMode(CENTER);
  image(abuelito,320, 240, 650, 500);
  textSize(14);
  fill(0, 0, 0, 255);
  text(texto3, 190, 253, 400, 200);
  if (frameCount/60>=3){
    frameCount = 0;
    estado = 6;
}
}
if (estado == 6) {
  image(carta, 320, 210, 360, 220);
  if (frameCount/60>=2) {
    frameCount = 0;
    estado = 7;
  }
}
 
 if (estado == 7){
   image(pueblito,320, 240, 650, 500);
       text(texto4,640/2,0+movimiento/3);
  if(frameCount/60>=10){
      frameCount=0;
      estado = 8;
  }
 }
 
 if (estado == 8){
   image(alex, 150, 363, 240, 200);
   textSize(15);
   fill(#1DF2C9);
   text(texto5, 328,288, 300,200);
if(frameCount/60>=0.5){
  frameCount=0;
 estado = 9;
}
 }
 
 if (estado == 9){
   image(jas, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 10;
   }
 }

 if (estado == 10) {
   image(gus, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 11;
   }
 }
 
  if (estado == 11) {
   image(abigail, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 12;
   }
  }
  
    if (estado == 12) {
   image(abue, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 13;
   }
  }
  
    if (estado == 13) {
   image(caroline, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 14;
   }
  }
  
    if (estado == 14) {
   image(demetrius, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 15;
   }
  }
    
    if (estado == 15) {
   image(elliott, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 16;
   }
  }
    
    if (estado == 16) {
   image(emily, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 17;
   }
  }
             
    if (estado == 17) {
   image(willy, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 18;
   }
  }
      
    if (estado == 18) {
   image(george, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 19;
   }
  }
      
    if (estado == 19) {
   image(haley, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 20;
   }
  }
      
    if (estado == 20) {
   image(harvy, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 21;
   }
  }
  
       
    if (estado == 21) {
   image(jodi, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 22;
   }
  }
       
    if (estado == 22) {
   image(leah, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 23;
   }
  }
      if (estado == 23) {
   image(vicent, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 24;
   }
  }
       
    if (estado == 24) {
   image(lewis, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 25;
   }
  }
       
    if (estado == 25) {
   image(linus, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 26;
   }
  }
         
    if (estado == 26) {
   image(mago, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 27;
   }
  }
         
    if (estado == 27) {
   image(marnie, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 28;
   }
  }
         
    if (estado == 28) {
   image(maru, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 29;
   }
  }
         
    if (estado == 29) {
   image(pam, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 30;
   }
  }
           
    if (estado == 30) {
   image(penny, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 31;
   }
  }
           
    if (estado == 31) {
   image(pierre, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 32;
   }
  }
           
    if (estado == 32) {
   image(robin, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 33;
   }
  }
           
    if (estado == 33) {
   image(sam, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 34;
   }
  }
           
    if (estado == 34) {
   image(sebas, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 35;
   }
  }
           
    if (estado == 35) {
   image(shane, 150, 363, 240, 200);
   if(frameCount/60>=0.5){
  frameCount=0;
  estado = 36;
   }
  }
           
if(estado == 36) {
  image(casamiento,320, 240, 650, 500);
  textSize(25);
  fill(#00FFC1);
  text(texto6, 60, 133, 500, 200);
  if ( frameCount/60 >= 5 ){
  frameCount = 0;
  estado = 37;
  }
}
if(estado == 37){
  image(horas,320, 240, 650, 500);
  textSize(25);
  fill(#FF00B3);
  text(texto7, 60 ,133, 500, 200);
  if (frameCount/60 >= 5){
    frameCount = 0;
    estado = 38;
  }
}

}













void mousePressed() {
//boton de gallinita
estado = 2;
    println("gallinita.png");
   image( stardew, 0, 0);
  
}
