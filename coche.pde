class Coche{
  
  private PImage img;
  private int posX;
  private int posY;
  private boolean horizontal;
  
  public Coche(PImage image, int posX, int posY, boolean horizontal)
  {
    this.img = image;
    this.posX = posX;
    this.posY = posY;
    this.horizontal = horizontal;
  }
  
  public Coche()
  {
    
  }
  
  void draw() 
  {
    fill(255);
    image(this.img, this.posX, this.posY);
    //background(255);
  }
  
  void moverEnX(int posX)
  {
    this.posX += posX;
    
    //controla que el coche no se salga del margen
    if (posX > width) 
    {
      this.posX = 0;
    }
    
  }
  
  void moverEnY(int posY)
  {
    this.posY += posY;
    
    //controla que el coche no se salga del margen
    if (posY > height) 
    {
      this.posY = 0;
    }
    //background(255);
  }
  
  /*GETTERS Y SETTERS*/
  public PImage getImg()
  {
    return this.img;
  }
  
  public void setImg(PImage img)
  {
    this.img = img;
  }
  
  public double getPosX()
  {
    return this.posX;
  }
  
  public double getPosY()
  {
    return this.posY;
  }
  
  public boolean getHorizontal()
  {
    return this.horizontal;
  }
  
  public void setPosX(int posX)
  {
    this.posX = posX;
  }
  
  public void setPosY(int posY)
  {
    this.posY= posY;
  }
  
  public void setHorizontal(boolean h)
  {
    this.horizontal = h;
  }
  
  public boolean isHorizontal()
  {
     return this.horizontal;
  }
  
}