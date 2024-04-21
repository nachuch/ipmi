PImage paisaje;

void setup (){
  size (800,400);
  background (18,166,255);
  paisaje=loadImage("paisaje.jpeg");
  
  
}

void draw (){
  image(paisaje,0,0);
  fill (158,188,187); //cielo azul mas claro
  rect (334,120,600,50);
  fill (185,151,9); // cielo amarillo
  rect (334,170,600,500);
  fill (59,39,1);
  ellipse (660,350,300,115); //piedra grande arriba
  fill (178,123,5); 
  rect (335,360,180,40); //agua
  fill (137,74,7); 
  rect (335,360,180,5); // linea de agua
  fill (59,39,1);
  ellipse (400,400,70,10); //piedra chica
  ellipse (400,395,30,15); // piedra peque arriba de la piedra chica
  ellipse (640,400,390,115); //piedra grande abajo
  fill (255,197,134);
  ellipse (360,0,50,10); //nube arriba peque
  ellipse (600,0,400,50); // nube arriba al lado 
  ellipse (650,20,70,30); // nube arriba mediana
  fill (62,56,51); 
  ellipse (650,10,60,10); //reflejo nube arriba mediana
  fill (255,197,134);
  ellipse (360,120,50,10); //nube media
  ellipse (360,105,50,10); // nube media arriba
  ellipse (450,110,100,30); // nube media grande 
  ellipse (360,70,50,10); // nube peque arriba
  ellipse (460,78,150,30); // nube grande 
  ellipse (600,115,150,10); // nube media grande
  ellipse (740,100,130,50); // nube media 
  fill (214,107,0);
  ellipse (369,180,70,10); //nube arriba
  ellipse (380,200,90,20); //nube media
   ellipse (380,225,90,15); // nube baja
    ellipse (510,220,150,25);
    ellipse (510,190,150,10);
     ellipse (698,196,210,50);
     fill (59,39,1);
     rect (650,83,17,210);
     rect (600,130,120,18);
     noStroke();
   
   
   
}
