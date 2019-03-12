class Earth
{
  //member data
  float degEarth = 0;
  PShape globe;
  
  //constructors
  Earth()
  {

  }
  //functions
  void move()
  {
  translate(800, 0);
  degEarth+=random(PI/90, PI/45);
  rotateX(degEarth);
  rotateY(degEarth);
  rotateZ(degEarth);
  //fill(0, 255, 255);
  globe = createShape(SPHERE,40);
  globe.setTexture(imgEarth);
  shape(globe);
  }
}
