class Sun
{
  //memberData
  float degSun = 0;
  PShape sun;
  float dia = 100;
  
  Sun()
  {
  }
  
  void move()
  {
      translate(width/2, height/2, z);
  //z+=ZDelta
  //zDelta = 10;
  rotateY(degSun);
  //rotateX(degSun+(random(-PI/60, PI/60)));
  degSun+=random(PI/195, PI/130);
  sun = createShape(SPHERE, 100);
  sun.setTexture(imgSun);
  shape(sun);
  }
}
