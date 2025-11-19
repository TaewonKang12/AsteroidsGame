//your variable declarations here
Spaceship sig;
Star[]stars;
ArrayList<asteroid>ast = new ArrayList<asteroid>();
public void setup() 
{
  //your code here
  background(0);
  size(800,800);
  sig= new Spaceship();
  stars = new Star[500];
  for(int  i =0; i<stars.length; i++){
  stars[i]= new Star(); 
  }
  for(int  i =0; i < 10; i++){
  ast.add(i,new asteroid()); 
  }
keyPressed();
}
public void draw() 
{
  background(0);
  sig.show();
  sig.move();
for(int  i =0; i<stars.length; i++){
  stars[i].show();
}
  for(int  i =0; i<ast.size(); i++){
    asteroid a = ast.get(i);
    a.show();
    a.move();
     if(dist((float)(sig.myCenterX),(float)(sig.myCenterY),(float)(a.myCenterX),(float)(a.myCenterY))<20){
    ast.remove(i);
  }
  }
  }
public void keyPressed(){
if(key=='w'){
sig.accelerate(.4);
}
if(key=='a'){
sig.myPointDirection-=10;
}
if(key=='s'){
sig.accelerate(-.4);
}
if(key=='d'){
sig.myPointDirection+=10;
}
if(key=='x'){
sig.myXspeed =0;
sig.myYspeed =0;
sig.myCenterX =Math.random()*801;
sig.myCenterY=Math.random()*801;
sig.myPointDirection=Math.random()*360;
}
}
