//https://youtu.be/10asi7KXdEk
PImage foto;
int cant=10;
int tam;
boolean reiniciar = false;


void setup() {
  size (800, 400);
  foto = loadImage("foto.jpeg");
  tam=width/cant;
}

void draw () {

  background (0);
  float colorR = map(mouseX, 0, width, 50, 255);
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      pushStyle();
      stroke (colorR);
      fill (0);
      rect (x * tam, y * tam, tam, tam);
      popStyle();
      if ((x+y) % 2 == 0) {
        pushStyle();
        if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 400) { // color de los circulos 2da mirad de pantalla
          fill(255, 0, 0); // ROJO
          circle(x * tam, y * tam, 20);
        } else if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 400) { // color de los circulos 1ra mirad de pantalla
          fill(255, 15, 240); //ROSA
          circle(x * tam, y * tam, 20);
        } else {
          fill(255);
          circle (x * tam, y * tam, 20);
        }
        popStyle();
        image(foto, -340, 1);
      }
    }
  }
  Boton( 200, 200, 50, 205, 230, 200, 100 ); // boton


  if (reiniciar == true) { // reiniciar el color blanco tanto el stroke como las ellipses

    for (int x = 0; x < cant; x++) {
      for (int y = 0; y < cant; y++) {
        pushStyle();
        stroke (200);
        fill (0);
        rect (x * tam, y * tam, tam, tam);
        fill(255);
        popStyle();
        if ((x+y) % 2 == 0) {
          circle(x * tam, y * tam, 20);
          image(foto, -340, 1);
        }
      }
    }
  }
}










boolean ToqueAqui (int Posx1, int Posx2, int Posy1, int Posy2) { // funcion que retorna un valor..
  return (mouseX > Posx1 && mouseX < Posx2 && mouseY > Posy1 && mouseY < Posy2);
}




void  Boton( int Posx, int Posy, int tam, int x, int y, color color1, color color2) { // funcion que no devuelve valor...
  pushStyle();
  if (mouseX > 199 && mouseX < 250 && mouseY > 199 && mouseY < 250) { // color del cuadrado
    fill (color1);
  } else {
    fill (color2);
  }
  rect (Posx, Posy, tam, tam); //200,200,50,50
  if (mouseX > 199 && mouseX < 250 && mouseY > 199 && mouseY < 250) { // color letra
    fill (0);
  } else {
    fill (255);
  }
  popStyle();
  textSize(10);
  text ("REINICIAR", x, y); // 205,230
}




void mousePressed() {
  if (ToqueAqui(199, 250, 199, 250)) {
    reiniciar = true;
  }
}
