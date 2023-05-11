PImage Avion1;
PImage Avion2;
PImage Avion3;
PImage Avion4;
PFont fuente;
int pantalla = 1;
float movimiento1 = 640;
float movimiento2 = 550;
float visión = 0;

void setup() {
  size(640, 480);
  textSize(30);
  Avion1 = loadImage("imagen1.jpg");
  Avion2 = loadImage("imagen2.png");
  Avion3 = loadImage("imagen3.jpg");
  Avion4 = loadImage("imagen4.jpg");
  fuente = loadFont("Bahnschrift-48.vlw");
}

void draw() {
  background(200);
  if (pantalla == 1) {
    image(Avion1, 0, 0, 640, 480);
    textFont(fuente, 40);
    fill(255, 0, 0);
    text("El primer avión, llamado Flyer I fue \n fabricado por los hermanos Wright \n el 17 de diciembre 1903.", movimiento1, 100);
    movimiento1 = movimiento1 - 0.8;
  } else if (pantalla == 2) {
    image(Avion2, 0, 0, 640, 480);
    textFont(fuente, 34);
    fill(0);
    text("Tenía 35 Kg de peso, un motor de 12 \ncaballos y el piloto que permanecía \nechado sobre el ala inferior del avión,\nmientras que el motor se situaba \na la derecha de la otra ala, y hacía girar\ndos hélices localizadas entre las alas. ", 10, movimiento2);
    movimiento2 = movimiento2 - 1;
  } else if (pantalla == 3) {
    image(Avion3, 0, 0, 640, 480);
    textFont(fuente, 34);
    fill(0, visión);
    text("Fue lanzado con una catapulta\ny mantenido durante 12 segundos\ncubriendo 36 metros sobre\nla bahía de Kitty Hawk en Ohio.", 2, 300);
    visión = visión + 0.8;
  }
  if (frameCount % 1000 == 0) {
    pantalla = pantalla + 1;
  }
  if (pantalla > 3) {
    pantalla = pantalla - 1;
  }
  if (frameCount > 3000) {
    fill(255);
    image(Avion4, 510, 410, 75, 75);
    fill(255, 46, 46);
    textSize(20);
    text("Restart", 515, 425);
  }
}
void mouseClicked() {
  if (mouseX > 510 && mouseY > 410 && mouseX < 585 && mouseY < 485 && pantalla == 3) {
    pantalla = 1;
    frameCount = 0;
    movimiento1 = 640;
    movimiento2 = 550;
    visión = 0;
  }
}
