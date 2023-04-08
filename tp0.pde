PImage Imagen;
void setup (){
  size(800,400);
  Imagen = loadImage ("ImagenTP0.png");
  image (Imagen, 0, 0, 400, 400);
}
void draw (){
  noStroke ();
  strokeJoin(ROUND);
  fill (200);
  rect (400,0,400,400);
  fill (100);
  ellipse (600,230,320,80);
  noFill ();
  stroke (0);
  strokeWeight (1);
  line (400,0,400,400);
  //vidrio delantero
  beginShape ();
  fill (25);
  vertex (530,158);
  vertex (590,150);
  vertex (600,128);
  vertex (658,130);
  vertex (650,160);
  endShape ();
  line (530,155,650,160);
  line (570,126,658,130);
  line (570,126,530,155);
  line (650,160,658,130);
  //vidrio lateral 1
  beginShape ();
  vertex (658,160);
  vertex (665,130);
  vertex (700,128);
  vertex (708,152);
  endShape();
  beginShape ();
  vertex (700,128);
  vertex (708,152);
  vertex (718,150);
  vertex (730,136);
  vertex (710,128);
  endShape ();
  noFill();
  line (665,130,658,160);
  line (700,128,708,152);
  line (665,130,700,128);
  line (658,160,708,152);
  //vidrio lateral 2
  line (718,150,708,152);
  line (700,128,710,128);
  line (718,150,730,136);
  line (708,128,730,136);
  //techo
  beginShape();
  strokeWeight (1);
  fill (#242631);
  vertex (530,154);
  vertex (435,172);
  vertex (435,200);
  vertex (454,222);
  vertex (575,231);
  vertex (589,228);
  vertex (595,194);
  vertex (645,186);
  vertex (657,214);
  vertex (708,198);
  vertex (735,190);
  vertex (750,170);
  vertex (750,136);
  vertex (728,134);
  vertex (718,147);
  vertex (655,160);
  vertex (530,154);
  endShape();
noFill();


  line (530,155,522,155);
  line (565,123,522,155);
  line (565,123,665,118);
  line (665,118,712,125);
  line (712,125,734,134);
  //back
  line (750,136,734,134);
  line (750,136,750,170);
  line (750,170,736,190);
  //front lado derecho
  line (530,155,435,170);
  line (435,170,435,185);
  //front lado izquierdo
  line (658,160,563,180);
  line (563,180,563,195);
  //front front
  line (435,170,563,180);
  line (563,195,435,185);
  //front down
  line (563,180,563,210);
  line (435,180,435,200);
  line (435,200,455,223);
  line (563,210,576,232);
  line (576,232,455,223);
  line (435,200,563,210);
  //side
  line (563,195,720,165);
  line (720,165,734,148);
  line (734,148,750,146);
  line (708,150,708,199);
  line (658,160,658,215);
  line (658,215,708,199);
  //back
  line (600,128,590,150);
  line (597,128,587,150);
  line (590,150,530,155);
  //rueda delantera
  fill (0);
  ellipse (625,220,55,58);
  noFill();
  fill (120);
  ellipse (625,220,39,42);
  ellipse (625,220,4,4);
  strokeWeight (4);
  line (625,220,635,235);
  line (625,220,615,235);
  line (625,220,608,214);
  line (625,220,642,214);
  line (625,220,625,201);
  strokeWeight(1);
   //rueda trasera
   fill (0);
  ellipse (718,196,37,45);
   noFill ();
   fill (120);
  ellipse (718,196,24,30);
  ellipse (718,196,4,4);
  strokeWeight (4);
  line (718,196,727,202);
  line (718,196,710,205);
  line (718,196,728,190);
  line (718,196,718,182);
  line (718,196,707,191);
  strokeWeight (1);
  //bottom
  line (576,232,590,229);
  line (590,229,595,194);
  line (595,194,645,185);
  line (645,185,658,215);
  //front lights
  ellipse (445,178,10,10);
  ellipse (460,179,10,10);
  ellipse (555,187,10,10);
  ellipse (540,186,10,10);
  ellipse (563,224,10,10);
  ellipse (458,217,10,10);
  strokeWeight(6);
  line (470,180,490,181);
  line (498,182,530,185);
  strokeWeight (17);
  line (475,213,542,218);
  strokeWeight (8);
  line (490,168,540,172);
  strokeWeight (1);
  line (490,166,540,157);
  line (540,172,594,161);
  strokeWeight (4);
  stroke (255);
  line (570,185,720,158);
  strokeWeight (2);
  line (440,190,556,199);
}
