// Nahuel Cadena 95524/4 Comisión 4
// Tamaño de los cuadrados
int squareSize = 20;
// Número de filas y columnas
int filas, columnas;

// Variables para controlar la posición del mouse
int mouseXPos, mouseYPos;

void setup() {
  size(800, 400);
  background(255);

  // Calcular el número de filas y columnas
  filas = height / squareSize;
  columnas = width / squareSize / 2;

  // Inicializar la posición del mouse en el centro de la pantalla
  mouseXPos = width / 2;
  mouseYPos = height / 2;
}

void draw() {
  background(255);

  // Dibujar la cuadrícula
  cuadrícula();

  // Dibujar la imagen de referencia a la izquierda
  drawReferenceImage();

  // Calcular y dibujar el efecto óptico
  drawOpticalEffect();
}

// Función para dibujar la cuadrícula
void cuadrícula() {
  for (int x = width / 2; x < width; x += squareSize) {
    for (int y = 0; y < height; y += squareSize) {
      stroke(0);
      noFill();
      rect(x, y, squareSize, squareSize);
    }
  }
}

// Función para dibujar la imagen de referencia a la izquierda
void drawReferenceImage() {
  // Dibujar una cuadrícula más pequeña
  int tam = height / 2;
  int referenceSquareSize = squareSize / 2;

  for (int x = 0; x < tam; x += referenceSquareSize) {
    for (int y = 0; y < tam; y += referenceSquareSize) {
      if ((x / referenceSquareSize) % 2 == 0) {
        if ((y / referenceSquareSize) % 2 == 0) {
          fill(255);
        } else {
          fill(0);
        }
      } else {
        if ((y / referenceSquareSize) % 2 == 0) {
          fill(0);
        } else {
          fill(255);
        }
      }

      noStroke();
      rect(x, y, referenceSquareSize, referenceSquareSize);
    }
  }
}

// Función para calcular y dibujar el efecto óptico
void drawOpticalEffect() {
  for (int x = width / 2; x < width; x += squareSize) {
    for (int y = 0; y < height; y += squareSize) {
      float distance = dist(x, y, mouseXPos, mouseYPos);

      // Calcular el tamaño de los cuadrados basado en la distancia al mouse
      float size = map(distance, 0, width / 2, squareSize, 0);

      // Calcular el nivel de gris basado en la posición del mouse
      float gris = map(mouseXPos, width / 2, width, 255, 0);

      fill(gris);
      noStroke();
      rect(x, y, size, size);
    }
  }
}

// Función para reiniciar el programa
void reset() {
  setup();
}

// Eventos del mouse
void mouseMoved() {
  // Actualizar la posición del mouse
  mouseXPos = mouseX;
  mouseYPos = mouseY;
}

// Eventos del teclado
void keyPressed() {
  // Reiniciar el programa cuando se presiona la tecla "R"
  if (key == 'R' || key == 'r') {
    reset();
  }
}
