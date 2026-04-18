PImage tp1;

int desp; // variable desplazar

void setup(){
size(800, 400);
tp1 = loadImage ("imagen.jpg");
}

void draw(){
background(255);

// quad amarillo
fill(226, 227, 39);
strokeWeight(2);
quad(449, 192, 595, 99, 489, -0, 260, -0); 

//triangulo amarillo
fill(226, 227, 39);
strokeWeight(2);
triangle(600, 400, 800, 120, 800, 400);

//triangulo morado
fill(100, 29, 111); 
strokeWeight(2);
triangle(651, 400, 400, 147, 400, 400); 
fill(100, 29, 111); 
strokeWeight(2);
triangle(621, 370, 600, 400, 650, 400);

//quad verde
fill(49, 142, 66);
strokeWeight(2);
quad(591, 336, 532, 359, 10, -10, 240, -20);

//imagen 
 image(tp1, 0, 0, 400, 400);

// quad morado 
fill(170, 117, 206);   
strokeWeight(2);
quad(728, 217, 596, 98, 2300, -1000, 1650, -1000);

//triangulo naranja 
fill(229, 133, 30);
strokeWeight(2);
triangle(596, 98, 746, 0, 488, 0);

//triangulos azules
fill(31, 94, 160);
strokeWeight(2);
triangle(581, 85, 488, 0, 543, 0);
fill(31, 94, 160);
strokeWeight(2);
triangle(584, 88, 729, 219, 678, 284);

//triangulos cejas 
fill(255, 21, 68);
strokeWeight(2);
triangle(436, 56, 551, 58, 541, 49);
fill(255, 21, 68);
strokeWeight(2);
triangle(511, 51, 542, 49, 566, 71);
fill(255, 21, 68);
strokeWeight(2);
triangle(672, 49, 619, 83, 705, 57);
fill(255, 21, 68);
strokeWeight(2);
triangle(685, 63, 701, 56, 751, 70);
fill(57, 21, 15);
strokeWeight(2);
triangle(589, 102, 595, 98, 583, 88);

//quad rojo
fill(255, 21, 68);
strokeWeight(2);
quad(721, 334, 650, 323, 3150, -3000, 1850, -1000);

// triangulos del ojo
fill(57, 21, 15);
triangle(619, 102, 626, 106, 640, 95);
fill(57, 21, 15);
triangle(638, 116, 649, 121, 653, 104);
fill(57, 21, 15);
triangle(669, 123, 681, 123, 676, 109); 
fill(57, 21, 15);
triangle(701, 119, 711, 114, 696, 105);
fill(57, 21, 15);
triangle(726, 101, 732, 93, 707, 88);
fill(57, 21, 15);
triangle(732, 82, 733, 74, 717, 76);

//cuadrilatero naranja
fill(229, 133, 30);
strokeWeight(2);
quad(449, 192, 590, 103, 680, 285, 621, 370);

//lineas 
strokeWeight(2);
line(647, 222, 594, 220);
strokeWeight(2);
line(594, 220, 589, 209);
strokeWeight(2);
line(595, 203, 586, 200); 
strokeWeight(2);
line(586, 200, 577, 203);
strokeWeight(2);
line(577, 203, 581, 213);
strokeWeight(2);
line(734, 400, 680, 284);
strokeWeight(2);
line(729, 218, 800, 281);
strokeWeight(2);
line(449, 192, 400, 224);


//cuadrilatero ojo
fill(227, 224, 149);
strokeWeight(2);
quad(557, 97, 525, 72, 449, 91, 510, 108);
strokeWeight(2);

//cuadrilateros boca
fill(12, 61, 111);
strokeWeight(2);
quad(525, 269, 582, 271, 595, 290, 537, 282); 
strokeWeight(2);
quad(662, 251, 604, 240, 567, 260, 582, 271);
strokeWeight(2);
quad(555, 243, 610, 263, 523, 268, 511, 254);

//triangulos boca
strokeWeight(2);
triangle(582, 271, 596, 290, 662, 251); 
strokeWeight(2);
triangle(580, 270, 524, 269, 572, 265);

//arc ojo
fill(120, 216, 137);
strokeWeight(2);
arc(674, 75, 90, 81, 0, radians(150) , CHORD);

//ellipse, arc y triagulo ojo 
fill(47, 173, 69); 
strokeWeight(2);
ellipse(521, 84, 30, 20); 
fill(12, 61, 111); 
strokeWeight(2);
arc(525, 76, 20, 15, radians(30), radians(180), CHORD);
triangle(513, 75, 525, 72, 531, 78); 

}

void mousePressed(){
 println(mouseX, mouseY); 
}
