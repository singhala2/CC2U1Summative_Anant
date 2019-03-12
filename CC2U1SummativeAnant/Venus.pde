class Venus
{
  float degVenus = 0;
  PShape globe;
  
  //constructors
  Venus()
  {

  }
  //functions
  void move()
  {
  translate(500, 0);
  degVenus+=random(PI/90, PI/45);
  rotateX(degVenus);
  rotateY(degVenus);
  rotateZ(degVenus);
  //fill(0, 255, 255);
  globe = createShape(SPHERE,33);
  globe.setTexture(imgVenus);
  shape(globe);
  }
}
