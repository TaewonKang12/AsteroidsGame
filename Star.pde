class Star //note that this class does NOT extend Floater
{
protected int x,y,size,clr;
Star(){
x=(int)(Math.random()*801);
y=(int)(Math.random()*801);
size = (int)(Math.random()*5);
clr = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
public void show(){
fill(clr);
noStroke();
ellipse(x,y,size,size);
}
}
