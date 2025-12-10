class Bullet extends Floater  
{   
public Bullet(){
corners=3; 
xCorners=new int [3];   
yCorners= new int [3];   
xCorners[1]= 16;
yCorners[1]= 0;
xCorners[0]= 12;
yCorners[0]= -4;
xCorners[2]= 12;
yCorners[2]= 4;
myColor= color(255);   
myCenterX=sig.getterX();
myCenterY=sig.getterY(); 
myPointDirection=sig.getterP(); 
accelerate(10);
}
public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;   
}
public double getterX(){
return myCenterX;
}
public double getterY(){
return myCenterY;
}
}//ef
