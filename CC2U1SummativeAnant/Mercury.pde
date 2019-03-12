class Mercury
{
  //member data
  float degSaturn = 0;
  PShape globe;
  
  //constructors
  Mercury()
  {

  }
  //functions
  void move()
  {
  translate(300, 0);
  degSaturn+=random(PI/70, PI/35);
  rotateX(degSaturn);
  rotateY(degSaturn);
  rotateZ(degSaturn);
  //fill(0, 255, 255);
  globe = createShape(SPHERE,30);
  globe.setTexture(imgMercury);
  shape(globe);
  }
}
