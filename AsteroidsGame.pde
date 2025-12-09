Spaceship sig;//ship
Star[]stars;//background
int score=0;//score
int health = 3;//hp
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
  for (int  i = ast.size()-1; i>0; i--) {
      asteroid a = ast.get(i);
      if (dist((float)(sig.myCenterX), (float)(sig.myCenterY), (float)(a.myCenterX), (float)(a.myCenterY))<20) {   //damage
        ast.remove(i);
        health--;
      }
  }
    for (int  i = ast.size()-1; i>0; i--) {//asteroids
      asteroid a = ast.get(i);
      a.show();
      a.move();
    }
   text("score ="+ score,10,10);
  text("health ="+ health,740,10);//show points
if(score==100){
  noLoop();
  textSize(50);
  fill(0,255,0);
  text("You Win", width-500, height-500);
  }//win
  if(health==0){
  noLoop();
  fill(255,0,0);
  textSize(50);
  text("You Lose", width-500, height-500);
  }//lose
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
