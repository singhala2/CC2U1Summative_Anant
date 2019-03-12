class stars
{
  //member data
  PVector pos;
  PVector dir;
  float size;
  //constructor
  stars(float x, float y, float z)
  {
    pos = new PVector(x,y,z);
    dir = new PVector(x,y,z);
    size = random(3,6);
  }
  //functions
  void update()
  {
    noStroke();
    fill(255);
    sphere(size);
    pos.add(dir);
    
  }
}
