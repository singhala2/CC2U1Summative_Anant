import processing.sound.*;

import queasycam.*;

QueasyCam cam;

PShape cearth;
PImage imgSun;
PImage imgEarth;
PImage imgMoon;
PImage imgStar;
PImage imgMercury;
PImage imgVenus;
PImage imgBox;

ArrayList<stars> stars = new ArrayList(100);

Earth e = new Earth();
Moon m = new Moon();
Mercury merc = new Mercury();
Venus v = new Venus();
Sun s = new Sun();
Skybox sb;

SoundFile file;

void setup()
{
  size(1600, 1000, P3D);  
  cam = new QueasyCam(this);
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), cameraZ/10.0, cameraZ*10.0);
  
  imgEarth = loadImage("earthmap.jpg");
  imgEarth.resize(1000,1000);
  imgMoon = loadImage("moonmap.jpg");
  imgMoon.resize(1000,1000);
  imgSun = loadImage("suntext.jpg");
  imgSun.resize(1000,1000);
  imgStar = loadImage("starmap.jpg");
  imgStar.resize(100,100);
  imgMercury = loadImage("mercurymap.jpg");
  imgVenus = loadImage("venusmap.jpg");
  imgBox = loadImage("milkywaymap.jpg");
  imgBox.resize(5000,5000);
  sb = new Skybox();
  
  file = new SoundFile(this, "kerbalspaceprogram.mp3");
  file.loop();
  
  for(int i = 0; i<100; i++)
  { 
    stars.add(new stars(random(-1000,1000), random(-1000,1000), random(-1000,1000)));
  }
}

float z = 0;
float zDelta = 0;


float mercdeg = 0;
float earthdeg = 0;
float venusdeg = 0;

void draw()
{
  
  background(255);
  
  noStroke();
  lights();

  pushMatrix();
    s.move();
    
    pushMatrix();
    rotateY(mercdeg);
    merc.move();
    popMatrix();
    mercdeg+=.03;
    pushMatrix();
    rotateY(venusdeg);
    venusdeg+=.02;
    v.move();
    popMatrix();
  
    pushMatrix();
      rotateY(earthdeg);
      earthdeg += .01;
      e.move();
    
      pushMatrix();
        translate(100, 0);
      //r.move();
      popMatrix();
    
      pushMatrix();
        m.move();
      popMatrix();
      
      rotateY(earthdeg);
    
      pushMatrix();
        translate(0, 100);
        fill(255);
        textAlign(CENTER);
        textSize(15);
        stroke(10);
        text("Earth", 0, 0);
      popMatrix();
    
    popMatrix();

  popMatrix();

  fill(255);
  textAlign(CENTER);
  textSize(20);
  stroke(10);
  text("Sun", width/2, height/2+150);
  
   stars();
   sb.render();
}

void stars()
{
  for (int i=stars.size()-1; i >= 0; i--)
  {
    pushMatrix();
    translate(stars.get(i).pos.x, stars.get(i).pos.y, stars.get(i).pos.z);
    stars.get(i).update();
    stars.get(i).dir.x = random(-1,1);
    stars.get(i).dir.y = random(-1,1);
    stars.get(i).dir.z = random(-1,1);
    if(stars.get(i).pos.x > 1000 || stars.get(i).pos.x < -1000 || stars.get(i).pos.y > 1000 || stars.get(i).pos.y < -1000 || stars.get(i).pos.z > 1000 || stars.get(i).pos.z < -1000 )
    {
      stars.get(i).dir.mult(-1);
    }
    popMatrix();
  }
}
