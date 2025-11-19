class asteroid extends Floater  
{   
protected double rot;
public asteroid(){
rot=Math.random()*10-5;
corners=6; 
xCorners=new int [corners];   
yCorners= new int [corners];   
xCorners[0]= -15+(int)((Math.random()*6)-3); 
yCorners[0]= 0+(int)((Math.random()*6)-3);
xCorners[1]= -7+(int)((Math.random()*6)-3); 
yCorners[1]= 15+(int)((Math.random()*6)-3);
xCorners[2]= 7+(int)((Math.random()*6)-3);
yCorners[2]= 15+(int)((Math.random()*6)-3);
xCorners[3]= 15+(int)((Math.random()*6)-3);
yCorners[3]= 0+(int)((Math.random()*6)-3);
xCorners[4]= 7+(int)((Math.random()*6)-3);
yCorners[4]= -15+(int)((Math.random()*6)-3);
xCorners[5]= -7+(int)((Math.random()*6)-3);
yCorners[5]= -15+(int)((Math.random()*6)-3);
myColor= color(100);   
myCenterX= (int)((Math.random()*2)*900)-50;
myCenterY= (int)((Math.random()*2)*900)-50; 
myXspeed=(int)((Math.random()*6)-3);
myYspeed=(int)((Math.random()*6)-3);
myPointDirection=(int)(Math.random()*360); 
}
public void move(){
super.turn(rot);
super.move();
if(myXspeed==0&&myXspeed==0){
myXspeed=(int)((Math.random()*6)-3);
myYspeed=(int)((Math.random()*6)-3);
 if(myCenterX >width)
    {     
      myCenterX = 0;  
myXspeed=(int)((Math.random()*6)-3);
myYspeed=(int)((Math.random()*6)-3);
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;  
myXspeed=(int)((Math.random()*6)-3);
myYspeed=(int)((Math.random()*6)-3);
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
myXspeed=(int)((Math.random()*6)-3);
myYspeed=(int)((Math.random()*6)-3);
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
myXspeed=(int)((Math.random()*6)-3);
myYspeed=(int)((Math.random()*6)-3);
    }   
}
} 
}
