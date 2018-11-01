int theta = 1;
float earthX = 300;
float earthY = 300;

void setup(){
  fullScreen();
  background(0);
}

void draw(){
  background(0);
  sun();
  earth();
  moon();
}

void earth(){
  fill(0,0,255);
  ellipse(width/2+earthX*cos(radians(theta)), height/2+earthY*sin(radians(theta)),100,100);
  theta++;
}

void sun(){
  fill(250,250,210);
  noStroke();
  ellipse(width/2,height/2, 300,300);
}



void moon(){
  fill(155);
  ellipse(earthX+100*cos(radians(theta)), earthY+100*sin(radians(theta)), 10, 10); 
}
