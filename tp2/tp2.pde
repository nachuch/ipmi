String estado;  
PImage imagen1, imagen2, imagen3, imagen4;
PFont font;  
int x = 320;
int y = 390;
int tiempo= 0;
int Posx,Posy; 
int Posx2,Posy2;
int Posx3,Posy3;

void setup() {

  size (640, 480);
  estado= "0"; // menu
  //imagenes cargadas
  imagen1 = loadImage("imagen1.jpeg");
  imagen2 = loadImage("imagen2.jpeg");
  imagen3 = loadImage ("imagen3.jpeg");
  imagen4 = loadImage ("imagen4.jpeg");
   //fuente cargada
  font = loadFont ("TimesNewRomanPS.vlw"); 
  Posx= 50; // pantalla 1
  Posy= 500;// pantalla 1
  Posx2 =60;  // pantalla 2 
  Posy2= 200; // pantalla 2
  Posx3= 30;  //pantalla 3
  Posy3= 550;  //pantalla 3
}

void draw() {

  if ( estado.equals("0") ) {
    background(0);
    image(imagen1,0,0);
    tiempo++;    // comienza a sumar el tiempo dentro de este estado.
    fill(255,128,0);
    textFont(font); 
    textSize(20);
    text("Time Princess es un juego para móviles de rol y aventura \n desarrollado por IGG Inc. que combina elementos de \n novela visual, puzzles y moda. El juego te permite viajar a \n través del tiempo y experimentar diferentes épocas y \n culturas a través de historias interactivas." ,Posx,Posy); 
     if(Posy > 350){  // condicion de movimiento del texto..
      Posy--;
   }

    if (tiempo == 1000 ) { // tiempo en pantalla 1
        estado="1";  // estado al que quiero cambiar..
        tiempo=0;  
     }

     } else if ( estado.equals("1") ) {    //si estoy en este estado... pasa lo siguiente: pantalla 2
    background(200);
    image(imagen2, 0, 0);
    tiempo++;  // comienza a sumar el tiempo dentro de este estado.
    fill (0);
    textFont(font);
    textSize(20);
    text ("Este juego se juega eligiendo un libro de tantos \n y comenzamos la aventura de la historia.", Posx2, Posy2);
    if (Posx2 > 20) {  // condicion de movimiento del texto..
      Posx2--;
    }

    if (tiempo == 400 ) {     // tiempo en pantalla 2
      estado="2";
      tiempo=0;
    }
  }
     else if ( estado.equals("2") ) {   //si estoy en este estado... pasa lo siguiente:
     background(140);
     image(imagen3,0,0);
      tiempo++;  // comienza a sumar el timepo dentro de este estado.
      fill (0);
    textFont(font);
    textSize(20);
    text ("En los libros que encontramos son Reina Maria,Lampara Magica\n,Memorias de ciudad gotica,El lago de los cisnes,entre otros.\nCada tanto se agregan nuevos libros.", Posx3, Posy3);
    if (Posy3 > 180) {  // condicion de movimiento del texto..
      Posy3--;
    }

     if (tiempo == 900 ) {     // tiempo en pantalla 3
        estado="3";
        tiempo=0;
     }
     }

   else if ( estado.equals("3") ) {   //si estoy en este estado... pasa lo siguiente:
     background(140);
     image(imagen4,0,0);
     if (mouseX > 370 && mouseX < 470 && mouseY > 400 && mouseY < 430) {
        fill(170,139,110);   //color del boton con el mouse..
}   else {
      fill(203,167,134); // color del boton sin el mouse..
}
     rect(370,400,100,30); 
     fill(0);
     textSize(15);
     stroke(2);
     text("REINICIAR",380,420 );
     fill (0);
     textFont(font);
     textSize (20);
     text ("Muchas Gracias!",25,100);
  }
}

void mousePressed(){

if ( estado.equals("3") ) {  
    if (mouseX > 370 && mouseX < 470 && mouseY > 400 && mouseY < 430) {  
       estado="0";  

       //REINICIAR VARIABLES....
        Posx= 50;
        Posy= 500;
  }
}
}
