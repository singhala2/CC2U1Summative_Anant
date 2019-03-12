class Moon
{
  float degMoon = 0;
  PShape moon;
  
  void move()
  {
  pushMatrix();
  translate(70, 20);
  degMoon=+random(PI/90, PI/45);
  rotateY(degMoon*random(-2, 2));
  rotateZ(degMoon*random(-2, 2));
  rotateX(degMoon*random(-2, 2));
  moon = createShape(SPHERE, 20);
  moon.setTexture(imgMoon);
  shape(moon);
  popMatrix();
  }
}
