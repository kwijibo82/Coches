/**
*EJERCICIO EXTRA EXAMEN ED
*JAVIER MORA CHACÓN  
**/

//constante con el número de coches del array
private static final int MAX_ELEMENTS_CARS = 100;

ArrayList<Coche> arrayCoches = new ArrayList();

int directionX;
int directionY;
int pos;
Coche c;
boolean debugMode;
boolean movement;
PFont font;

String right = "right";
String left = "left";
String up = "up";
String down = "down";

void setup()
{
  size(510, 480);
  inicializarArray();
  pos = 0;
  c = new Coche(loadImage("yellowCar.png"), 400, 220, true);
  debugMode = false;

  directionX = 0;
  directionY = 0;
  
  movement = false;
}

//IMPORTANTE! TODO: Crear un log de registro donde se graben los errores, IMPORTANTE PARA EL EXAMEN

void draw()
{  
  //marco "ciudad"
  rect(0, 0, 640, 480);
  
  //dibuja las "manzanas" de la ciudad
  fill(255);
  rect(50,40,180,180); //superior izquierdo
  rect(50,270,180,180); //inferior izquierdo
  rect(280,40,180,180); //superior derecho
  rect(280,270,180,180); //inferior derecho 
    
  //background(255);
  c.draw();
  c.moverEnX(directionX);
  c.moverEnY(directionY);   
  
  if (debugMode)
  {
    font = loadFont("ArialMT-12.vlw");
    textFont(font);
    fill(0, 102, 153);
    text("Coordenadas: " + " x: "+ c.getPosX() + "px y: " + c.getPosY() + "px",  (float)c.getPosX(), (float)c.getPosY());   
    println("DebugMode is: " + debugMode);
  } 
  
  font = loadFont("ArialMT-12.vlw");
  textFont(font);
  fill(0, 102, 153);
  text("Press 'B' key to show position, press 'N' key hide it.", 120, 470);
  fill(255);
}

void keyPressed()
{
  String direction = "";
  
  
  //debug mode
  if (key == 'b')
  {
    debugMode = true; 
  }
  else if (key == 'n')
  {
    debugMode = false; 
  }
  
  //movimiento
  if (key == 'w')
  {
    directionY = -1; 
    PImage image = loadImage("yellowCarUP.png");
    c.setImg(image);
    direction = up;
  }
  else if (key == 'a')
  {
    directionX = -1;
    PImage image = loadImage("yellowCar.png");
    c.setImg(image);
    direction = left;
  }
  else if (key == 'd')
  {
    directionX = 1;
    PImage image = loadImage("yellowCarBACK.png");
    c.setImg(image);
    direction = right;
  }
  else if (key == 's')
  {
    directionY = 1;
    PImage image = loadImage("yellowCarDOWN.png");
    c.setImg(image);
    direction = down;
  }

  println("Pressed key is: " + key + " - " + direction);
  
}

//controla cuando una tecla se libera
void keyReleased() 
{
  if (directionX != 0) 
  {
    directionX = 0;
  }
  if (directionY != 0) 
  {
    directionY = 0;
  } 
}
 /*
boolean comprobarColision()
{
  
  
}*/

//llena el array de Coches con 100 coches (por ejemplo)
void inicializarArray()
{
  for (int i = 0; i < 100; i++)
  {
    Coche c = new Coche(loadImage("yellowCar.png"), 50, 50, true);
    arrayCoches.add(c);
  }
  
}