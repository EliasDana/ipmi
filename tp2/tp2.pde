//Nombre: Elias Dana
//Legajo: 125563/3
//Comision 1

//IMAGENES
PImage fondo;
float posXFondo, posYFondo, tamXFondo, tamYFondo, velNube; 
PImage rss;
float posXRss, posYRss, tamXRss, tamYRss;
PImage cars2;
float posXCars2, posYCars2, tamXCars2, tamYCars2;
PImage logo;
float posXLogo, posYLogo, tamXLogo, tamYLogo; 
PImage cars;
float posXCars, posYCars, tamXCars, tamYCars;
PImage mate;
float posXMate, posYMate, tamXMate, tamYMate;
PImage sully;
float posXSully, posYSully, tamXSully, tamYSully; 
PImage dh;
float posXDh, posYDh, tamXDh, tamYDh;
PImage luigi;
float posXLuigi, posYLuigi, tamXLuigi, tamYLuigi; 
PImage guido;
float posXGuido, posYGuido, tamXGuido, tamYGuido;
PImage cp;
float posXCp, posYCp, tamXCp, tamYCp;
PImage nube;
float posXNube, posYNube, tamXNube, tamYNube;

//BOTON INICIO
int tamXBotonInicio;
int tamYBotonInicio;

float posXBotonInicio;
float posYBotonInicio;

boolean botonInicioActivado;
float posXImagen, posYImagen, tamXImagen, tamYImagen;
float opacidad;

//TEXTO Y RECT TRANSP
PFont fuenteNueva;
float posXTexto;
float posYTexto;
float tamTexto;
float posXRect1;
float posYRect1;
float tamXRect1;
float tamYRect1;

//ESTADO
int estado;

//CONTADOR
int contador;
float tamXRect, tamYRect;
float posXRect, posYRect;

//MIVARIABLE
int miVariable = 100;

void setup(){
size(640, 480);

//IMAGENES
logo = loadImage ("logo.png");
cars = loadImage ("cars.jpg.png");
cars2 = loadImage ("cars2.png");
mate = loadImage ("mate.png");
sully = loadImage ("sully.png");
dh = loadImage ("dochudson.png");
luigi = loadImage ("luigi.png");
guido = loadImage ("guido.png");
cp = loadImage ("copapiston.png");
fondo = loadImage ("fondo.png");
nube = loadImage ("nube.png");
rss = loadImage ("rss.png");

//FUENTE NUEVA, TEXTO Y RECT TRANS
fuenteNueva = loadFont ("AfacadFlux-ExtraBold-28.vlw");
tamTexto=10; 
posXTexto=width/2;
posYTexto=150;
textFont(fuenteNueva);
posXRect1=0;
posYRect1=0;
tamXRect1=width;
tamYRect1=height;

//BOTON INICIO
estado=1;
tamXBotonInicio= 100;
tamYBotonInicio=50;
posXBotonInicio= width/2 - tamXBotonInicio/2;
posYBotonInicio= height - height/5 - tamYBotonInicio/2;
contador=0;
posXRect=0;
posYRect=0;
tamXRect=0;
tamYRect=0;
opacidad=0;
textAlign(CENTER,CENTER);

//CARS
posXCars=280;
posYCars=270;
tamXCars=240;
tamYCars=200;

//CARS 2
posXCars2=-25;
posYCars2=200;
tamXCars2=500;
tamYCars2=270;

//MATE
posXMate=50;
posYMate=250;
tamXMate=240;
tamYMate=200;

//SULLY
posXSully=300;
posYSully=120;
tamXSully=270;
tamYSully=200;

//DH
posXDh=50;
posYDh=120;
tamXDh=250;
tamYDh=150;

//LUIGI 
posXLuigi=20;
posYLuigi=280;
tamXLuigi=240;
tamYLuigi=240;

//GUIDO
posXGuido=160;
posYGuido=130;
tamXGuido=150;
tamYGuido=180;

//CP
posXCp=350;
posYCp=250;
tamXCp=280;
tamYCp=200;

//NUBE
posXNube=-200;
posYNube=25;
velNube=2;
tamXNube=200;
tamYNube=130;

}
void draw(){
background(120);
///////////////////////////////////// ESTADO 1 /////////////////////////////////////////////
if (estado==1) {
if (mouseX>posXBotonInicio && mouseX<posXBotonInicio+tamXBotonInicio && mouseY> posYBotonInicio && mouseY < posYBotonInicio + tamYBotonInicio) {
fill(0, 0, 0);
} else {
fill(255, 0, 0);
}
if (botonInicioActivado) {
contador++;
}
if (contador>0 && contador<50) {
opacidad=map(contador, 0, 50, 0, 255);
} 
//IF CONTADOR
if (contador>50) {
contador=0;
estado=2;
posXCars = width + 200;
posYCars = 270;
posXTexto = width/2;
posYTexto = -height;
noTint();
}
image(fondo, 0, 0, width, height);
image (logo, 172, 70, 300, 250);
textSize(24);
text("INICIAR", posXTexto, 342, tamTexto);
if (botonInicioActivado==false) {
rect(posXBotonInicio, posYBotonInicio, tamXBotonInicio, tamYBotonInicio); 
 }
}
////////////////////////////////////////////////////////// ESTADO 2 //////////////////////////////////////////////
if (estado==2) {
botonInicioActivado=false;
contador++;
posXNube = posXNube + velNube;
image(fondo, 0, 0, width, height);
image(nube, posXNube, posYNube, tamXNube, tamYNube);
//IF NUBE
if (posXNube > width) {
posXNube = -tamXNube;
}
//IF TEXTO   
if (contador>50 && contador <250) {
posYTexto=map(contador, 50, 250, -height, 150);
}
else  if (contador>500 && contador<700) {
posYTexto=map(contador, 500, 700, 150, height+400);
}  
fill(0);
text("Rayo Mcqueen es un auto de carreras famoso, \nseguro y enfocado en ganar.", posXTexto, posYTexto);
//IF CARS 
if (contador>50 && contador<250) {
posXCars=map(contador, 50, 250, width+200, 200);
}
else if (contador>550 && contador<700) {
posXCars=map(contador, 550, 700, 200, width+200);
}
image(cars, posXCars, posYCars, tamXCars, tamYCars);
//IF TRANS
if (contador>700 && contador<800) {
fill(0, 0, 0);
tamXRect1=map(contador, 700, 800, 0, width);
rect(posXRect1, posYRect1, tamXRect1, tamYRect1);
}
//IF CONTADOR
if (contador>800) {
estado=3;
contador=0;
posXCars = width/2;
posYCars = height + 200;
posXMate = 50;
posYMate = height + 200;
posXTexto = -width;
posYTexto = 100;
noTint();
 }
}
///////////////////////////////////////////////////////////// ESTADO 3 ////////////////////////////////////////////
if (estado==3) {
contador++; 
posXNube = posXNube + velNube;
image(rss, 0, 0, width, height);
image(cars, posXCars, posYCars, tamXCars, tamYCars);
image(mate, posXMate, posYMate, tamXMate, tamYMate);
image(nube, posXNube, posYNube, tamXNube, tamYNube);
fill(0);
text("Por accidente, \ntermina en un pueblo llamado Radiator Springs, \ndonde conoce a nuevos amigos.", posXTexto, posYTexto);
//IF NUBE
if (posXNube > width) {
posXNube = -tamXNube;
}
//IF TEXTO   
if (contador>60 && contador <250) {
posXTexto=map(contador, 60, 250, -width, width/2);
}
else  if (contador>500 && contador<700) {
posXTexto=map(contador, 500, 700, width/2, width+400);
}  
//IF CARS 
if (contador>50 && contador<250) {
posYCars=map(contador, 50, 250, height+200, 240);
}
else if (contador>550 && contador<700) {
posYCars=map(contador, 550, 700, 240, height+200);
}
//IF MATE 
if (contador>50 && contador<250) {
posYMate=map(contador, 50, 250, +height, 240);
}
else if (contador>550 && contador<700) {
posYMate=map(contador, 550, 700, 240, -width);
}
//IF TRANS
if (contador>700 && contador<800) {
fill(0, 0, 0);
tamXRect1=map(contador, 700, 800, 0, width);
rect(posXRect1, posYRect1, tamXRect1, tamYRect1);
}
//IF CONTADOR            
if (contador>800) {
estado=4;
contador=0;
posXCars = width/2;
posYCars = height + 200;
posXSully = -width;
posYSully = 120;
posXDh = 50;
posYDh = height + 100;
posXMate = 50;
posYMate = height + 100;
posXTexto = -width;
posYTexto = 90;
 }
}
/////////////////////////////// ESTADO 4 //////////////////////////////////////////////// 
if (estado==4) {
contador++; 
posXNube = posXNube + velNube;
image(rss, 0, 0, width, height);
image(cars, posXCars, posYCars, tamXCars, tamYCars);
image(sully, posXSully, posYSully, tamXSully, tamYSully);
image(dh, posXDh, posYDh, tamXDh, tamYDh);
image(mate, posXMate, posYMate, tamXMate, tamYMate);
image(nube, posXNube, posYNube, tamXNube, tamYNube);
fill(0);
text("Alli aprende que lo mas importante no es ganar, \nsino las personas que te apoyan.", posXTexto, posYTexto);
//IF NUBE
if (posXNube > width) {
posXNube = -tamXNube;
}//IF TEXTO   
if (contador>50 && contador <250) {
posXTexto=map(contador, 50, 250, -width, width/2);
}
else  if (contador>500 && contador<700) {
posXTexto=map(contador, 500, 700, width/2, width+400);    
}  
//IF CARS 
if (contador>50 && contador<250) {
posYCars=map(contador, 50, 250, -height, 280);
}
else if (contador>550 && contador<700) {
posYCars=map(contador, 550, 700, 280, -height);
}
//IF SULLY
if (contador>50 && contador<250) {
posXSully=map(contador, 50, 250, -width, 350);
}
else if (contador>550 && contador<700) {
posXSully=map(contador, 550, 700, 350, width);
}
//IF DH
if (contador>50 && contador<250) {
posYDh=map(contador, 50, 250, height+100, 150);
}
else if (contador>550 && contador<700) {
posYDh=map(contador, 550, 700, 150, -height);
}
//IF MATE 
if (contador>50 && contador<250) {
posYMate=map(contador, 60, 250, +height, 270);
}
else if (contador>550 && contador<700) {
posYMate=map(contador, 550, 700, 270, -height);
}
//IF TRANSICION PANTALLA
if (contador>700 && contador<800) {
fill(0, 0, 0);
tamXRect1=map(contador, 700, 800, 0, width);
rect(posXRect1, posYRect1, tamXRect1, tamYRect1);
}
//IF CONTADOR      
if (contador>800) {
estado=5;
contador=0;
posXCars = width/2;
posYCars = -height;
posXLuigi = -width;
posYLuigi = 280;
posXGuido = 200;
posYGuido = height + 100;
posXTexto = -width;
posYTexto = 80;
 }
}
///////////////////////////////// ESTADO 5 /////////////////////////////////////// 
if (estado==5){
contador++; 
posXNube = posXNube + velNube;
image(rss, 0, 0, width, height);
image(cars, posXCars, posYCars, tamXCars, tamYCars);
image(luigi, posXLuigi, posYLuigi, tamXLuigi, tamYLuigi);
image(guido, posXGuido, posYGuido, tamXGuido, tamYGuido);
image(nube, posXNube, posYNube, tamXNube, tamYNube);
fill(0);
text("Decide ayudar a sus amigos \ny entiende el verdadero valor de trabajo en equipo.", posXTexto, posYTexto);
//IF NUBE
if (posXNube > width) {
posXNube = -tamXNube;
}
//IF TEXTO   
if (contador>50 && contador <250) {
posXTexto=map(contador, 50, 250, -width, width/2);
}
else  if (contador>500 && contador<700) {
posXTexto=map(contador, 500, 700, width/2, width+400);
}  
//IF CARS
if (contador>50 && contador<250) {
posYCars=map(contador, 50, 250, -height, 240);
}
else if (contador>550 && contador<700) {
posYCars=map(contador, 550, 700, 240, height+400);
}
//IF LUIGI
if (contador>50 && contador<250) {
posXLuigi=map(contador, 50, 250, -width, 20);
}
else if (contador>550 && contador<700) {
posXLuigi=map(contador, 550, 700, 20, -width);
}
//IF GUIDO
if (contador>50 && contador<250) {
posYGuido=map(contador, 50, 250, height+100, 140);
}
else if (contador>550 && contador<700) {
posYGuido =map(contador, 550, 700, 140, -height);
}
//IF TRANSICION PANTALLA
if (contador>700 && contador<800) {
fill(0, 0, 0);
tamXRect1=map(contador, 700, 800, 0, width);
rect(posXRect1, posYRect1, tamXRect1, tamYRect1);
}      
//IF CONTADOR      
if (contador>800) {
estado=6;
contador=0;
posXCars2 = -25;
posYCars2 = height + 100;
posXCp = width + 100;
posYCp = 250;
posXTexto = -width;
posYTexto = 100;
 }
}
///////////////////////////////////ESTADO 6 ////////////////////////////////////// 
if (estado==6){
contador++;
posXNube = posXNube + velNube;
image(fondo, 0, 0, width, height);
image(cars2, posXCars2, posYCars2, tamXCars2, tamYCars2);
image(cp, posXCp, posYCp, tamXCp, tamYCp);
image(nube, posXNube, posYNube, tamXNube, tamYNube);
fill(0);
text("Rayo regresa a la pista como una mejor persona \ny logra su sueño: \nganar la COPA PISTÓN.", posXTexto, posYTexto);
//IF NUBE
if (posXNube > width) {
posXNube = -tamXNube;
}
//IF TEXTO   
if (contador>50 && contador <250) {
posXTexto=map(contador, 50, 250, -width, width/2);
}
else  if (contador>500 && contador<700) {
posXTexto=map(contador, 500, 700, width/2, width+400);
}  
//IF CARS
if (contador>50 && contador<250) {
posYCars2=map(contador, 50, 250, height+100, 240);
}
else if (contador>550 && contador<700) {
posYCars2=map(contador, 550, 700, 240, height+400);
}
//IF CP
if (contador>50 && contador<250) {
posXCp=map(contador, 50, 250, width+100, 350);
}
else if (contador>550 && contador<700) {
posXCp=map(contador, 550, 700, 350, -width);
}
//IF TRANSICION PANTALLA
if (contador>700 && contador<800) {
fill(0, 0, 0);
tamXRect1=map(contador, 700, 800, 0, width);
rect(posXRect1, posYRect1, tamXRect1, tamYRect1);
}      
//IF CONTADOR      
if (contador>800) {
estado=7;
contador=0;  
 }
}
 ///////////////////////////// ESTADO 7 //////////////////////////////////////
if (estado==7){
contador++; 
posYTexto=350;
posXTexto=width/2;
textSize(24);
text("REINICIAR", posXTexto, 342, tamTexto);
image(fondo, 0, 0, width, height);
image (logo, 172, 70, 300, 250);
text("REINICIAR", posXTexto, 342, tamTexto);
//BOTON REINICIAR  
fill(255, 0, 0);
rect(posXBotonInicio, posYBotonInicio, tamXBotonInicio, tamYBotonInicio);
if (botonInicioActivado==true) {
reiniciar();
  }
 }
}
void mousePressed() {
if (mouseX>posXBotonInicio && mouseX<posXBotonInicio+tamXBotonInicio && mouseY> posYBotonInicio && mouseY < posYBotonInicio + tamYBotonInicio) {
botonInicioActivado=true; 
 }
}

//REINICIAR 
void reiniciar() {
tamTexto=20;
posXTexto=width/2;
posYTexto=height/2;
contador=0;
posXRect=0;
posYRect=0;
tamXRect=0;
tamYRect=height;
botonInicioActivado=false;
opacidad=0;
estado=1;
}
