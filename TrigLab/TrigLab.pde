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

void setup(){
  fullScreen();
  background(0);
}

void draw(){
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

void mercury(){
  fill(155);
  ellipse(width/2+110*cos(radians(thetaMercury)), height/2+110*sin(radians(thetaMercury)),5,5);
  thetaMercury+=2;
}

void venus(){
  fill(255,0,0);
  ellipse(width/2+130*cos(radians(thetaVenus)), height/2+130*sin(radians(thetaVenus)),10,10);
  thetaVenus+=1.8;
}

void earth(){
  fill(0,0,255);
  earthX = width/2+170*cos(radians(thetaEarth));
  earthY = height/2+170*sin(radians(thetaEarth));
  ellipse(earthX, earthY,10,10);
  thetaEarth+=1.6;
}

void mars(){
  fill(255,0,0);
  ellipse(width/2+200*cos(radians(thetaMars)), height/2+200*sin(radians(thetaMars)),5,5);
  thetaMars+=1.3;
}

void jupiter(){
  fill(178,123,41);
  ellipse(width/2+300*cos(radians(thetaJupiter)), height/2+300*sin(radians(thetaJupiter)),50,50);
  thetaJupiter+=1.1;
}

void saturn(){
  fill(175,134,72);
  ellipse(width/2+380*cos(radians(thetaSaturn)), height/2+380*sin(radians(thetaSaturn)),30,30);
  thetaSaturn++;
}

void uranus(){
  fill(72,175,175);
  ellipse(width/2+430*cos(radians(thetaUranus)), height/2+430*sin(radians(thetaUranus)),20,20);
  thetaUranus+=.8;
}

void neptune(){
  fill(51,127,160);
  ellipse(width/2+500*cos(radians(thetaNeptune)), height/2+500*sin(radians(thetaNeptune)),20,20);
  thetaNeptune+=.6;
}

void sun(){
  fill(250,250,210);
  noStroke();
  ellipse(width/2,height/2, 150,150);
}



void moon(){
  fill(155);
  ellipse(earthX+moonX*cos(radians(thetaMoon)), earthY+moonY*sin(radians(thetaMoon)), 3, 3);
  thetaMoon = (thetaMoon+2)%360;
}


void belt(){
  fill(155);
  for(float theta=0; theta<1000; theta++){
    ellipse(width/2+random(220,250)*cos(radians(theta)), height/2+random(220,250)*sin(radians(theta)),2,2);
  }
}
 
 
