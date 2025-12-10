Spaceship sig;//ship
Star[]stars;//background
ArrayList <asteroid> ast = new ArrayList <asteroid> ();//asteroid
public void setup() 
{
  //your code here
  background(0);
  size(800, 800);
  stars = new Star[500];/make array of stars
  sig= new Spaceship();//make single ship
  for (int  i =0; i<stars.length; i++) {
    stars[i]= new Star();//make all stars
  }
  for (int  i =0; i < 30; i++) {
    ast.add(i, new asteroid());//make all asteroids
  }
  keyPressed();
}
public void draw() 
{
  background(0);
  sig.show();
  sig.move();
  for (int  i =0; i<stars.length; i++) {
    stars[i].show();
  }
}
public void keyPressed() {
  if (key=='w') {
    sig.accelerate(.4);
  }
  if (key=='a') {
    sig.myPointDirection-=10;
  }
  if (key=='s') {
    sig.accelerate(-.4);
  }
  if (key=='d') {
    sig.myPointDirection+=10;
  }
  if (key=='x') {
    sig.myXspeed =0;
    sig.myYspeed =0;
    sig.myCenterX =Math.random()*801;
    sig.myCenterY=Math.random()*801;
    sig.myPointDirection=Math.random()*360;
  }
}
