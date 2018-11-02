float thetaEarth = 1.6;
float thetaMoon = 1;
float thetaMercury =2;
float thetaVenus = 1.8;
float thetaMars = 1.3;
float thetaJupiter =1.1;
float thetaSaturn =1;
float thetaUranus =.8;
float thetaNeptune =.6;
float earthX = 300;
float earthY = 300;
float moonX = 10;
float moonY = 10;
PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;

void setup() {
  fullScreen();
  background(0);
  img = loadImage("Mercury.png");
  img1 = loadImage("venus.png");
  img2 = loadImage("earth.png");
  img3 = loadImage("mars.png");
  img4 = loadImage("jupiter.png");
  img5 = loadImage("saturn.png");
  img6 = loadImage("uranus.png");
  img7 = loadImage("neptune.png");
  img8 = loadImage("sun.png");
}

void draw() {
  background(0);
  mercury();
  venus();
  sun();
  earth();
  moon();
  mars();
  jupiter();
  saturn();
  uranus();
  neptune();
  belt();
  
}

void mercury() {
  //fill(155);
  image(img, width/2+110*cos(radians(thetaMercury)), height/2+110*sin(radians(thetaMercury)), 5, 5);
  thetaMercury+=2;
}

void venus() {
  //fill(255, 0, 0);
  image(img1, width/2+130*cos(radians(thetaVenus)), height/2+130*sin(radians(thetaVenus)), 10, 10);
  thetaVenus+=1.8;
}

void earth() {
  //fill(0, 0, 255);
  earthX = width/2+170*cos(radians(thetaEarth));
  earthY = height/2+170*sin(radians(thetaEarth));
  image(img2, earthX, earthY, 10, 10);
  thetaEarth+=1.6;
}

void mars() {
  //fill(255, 0, 0);
  image(img3, width/2+200*cos(radians(thetaMars)), height/2+200*sin(radians(thetaMars)), 5, 5);
  thetaMars+=1.3;
}

void jupiter() {
  //fill(178, 123, 41);
  image(img4, width/2+300*cos(radians(thetaJupiter)), height/2+300*sin(radians(thetaJupiter)), 50, 50);
  thetaJupiter+=1.1;
}

void saturn() {
  //fill(175, 134, 72);
  image(img5, width/2+380*cos(radians(thetaSaturn)), height/2+380*sin(radians(thetaSaturn)), 30, 30);
  thetaSaturn++;
}

void uranus() {
  //fill(72, 175, 175);
  image(img6, width/2+430*cos(radians(thetaUranus)), height/2+430*sin(radians(thetaUranus)), 20, 20);
  thetaUranus+=.8;
}

void neptune() {
  //fill(51, 127, 160);
  image(img7, width/2+500*cos(radians(thetaNeptune)), height/2+500*sin(radians(thetaNeptune)), 20, 20);
  thetaNeptune+=.6;
}

void sun() {
  //fill(250, 250, 210);
  noStroke();
  image(img8, width/2, height/2, 150, 150);
}



void moon() {
  fill(155);
  ellipse(earthX+moonX*cos(radians(thetaMoon)), earthY+moonY*sin(radians(thetaMoon)), 3, 3);
  thetaMoon = (thetaMoon+2)%360;
}


void belt() {
  fill(155);
  for (float theta=0; theta<1000; theta++) {
    ellipse(width/2+random(220, 250)*cos(radians(theta)), height/2+random(220, 250)*sin(radians(theta)), 2, 2);
  }
  imageMode(CENTER);
}
