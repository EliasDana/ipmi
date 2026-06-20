// Nombre: Elias Dana
// Legajo: 125563/3
// Comision 1
// link "https://youtu.be/Dlhbdn72Q8Y"

PImage imagen;
float posXImagen, posYImagen, tamXImagen, tamYImagen;
int cant;
int calle;
int tam;
float rojo;
float verde;
float azul;
boolean cuadradosRandom = false;
boolean rotar = false;

void setup(){
size(800, 400);  
//IMAGEN
imagen = loadImage("imagen.jpg");
//VARIABLES
cant = 14;
calle = 14;
tam = width/cant;
rojo = 255;
azul = 255;
verde = 255;
}

void draw(){
background(130);
//GRILLA
grilla(tam, cant, calle);
//IMAGEN
image(imagen, 0, 0, width/2, height);
}

//GRILLA
void grilla(int tam, int cant, int calle) {
noStroke();
fill(0);
for(int i=0; i<cant; i++){
for(int j=0; j<cant; j++){
if (cuadradosRandom) {
fill(random(255));
}
else {
fill(0);
}
pushMatrix();
float centroX = i*tam + (tam-calle)/2;
float centroY = j*tam + (tam-calle)/2;
translate(centroX, centroY);
if (rotar) {
rotate(radians(45));
}
rectMode(CENTER);
rect(0, 0, tam-calle, tam-calle);
popMatrix();
  }
}
//CIRCULOS
for (int i=0; i<=cant; i++) {
for (int j=0; j<=cant; j++) {
fill(rojo, verde, azul);
ellipse(i*tam-calle/2, j*tam-calle/2, calle+calle/2, calle+calle/2);
    }
  }
}
boolean esPar(int calle, int cant) {
if ((calle + cant) % 2 == 0) {
return true;
} 
else {
return false;
  }
}
void mousePressed() {
for (int i=0; i<=cant; i++) {
for (int j=0; j<=cant; j++) {
float x = i*tam-calle/2;
float y = j*tam-calle/2;
if (dist(mouseX, mouseY, x, y) < (calle+calle/2)/2) {
rojo = random(255);
verde = random(255);
azul = random(255);
      }
    }
  }
}

void keyPressed(){
if (key == ' ') {
reiniciar();
}
if (keyCode == ENTER) {
if (esPar(cant, calle)) {
cuadradosRandom = true;
  }
}
if (key == 'a' || key == 'A') {
rotar = true;
  }   
}

//REINICIAR 
void reiniciar() {
noStroke();
fill(0);
for(int i=0; i<cant; i++){
for(int j=0; j<cant; j++){
rect(i*tam, j*tam, tam - calle, tam - calle);
  }
}
//CIRCULOS
fill(255, 255, 255, 200);
for (int i=0; i<=cant; i++) {
for (int j=0; j<=cant; j++) { 
ellipse(i*tam-calle/2, j*tam-calle/2, calle+calle/2, calle+calle/2);
  }
}
rojo = 255;
verde = 255;
azul = 255;
cuadradosRandom = false;
rotar = false;
//IMAGEN
image(imagen, 0, 0, width/2, height);
}
