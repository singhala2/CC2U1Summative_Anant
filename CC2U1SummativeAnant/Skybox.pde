class Skybox
{
  PShape box;
  
  Skybox()
  {
    box = createShape(BOX, 5000, 5000, 5000);
    box.setTexture(imgBox);
  }
  
  void render()
  {
    translate(800,1000);
    shape(box);
  }
}
