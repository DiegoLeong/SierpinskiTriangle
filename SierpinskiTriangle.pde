public void setup()
{	
	//noStroke();
  size(1000,1000);
}
public void draw()
{
	//sierpinski(0,400,400);
  sierpinski(mouseX-500,mouseY+500,1000);
}
public void mouseDragged()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{	
	if(len<=20)
	{
    triangle(x, y, x+len/2, y-len, x+len, y);
    //triangle(x, y, x+len, y, x+len/2,len);
	}
	else
	{
    sierpinski(x,y,(len/2));
    sierpinski((x+len/2),y,(len/2));
    sierpinski((x+len/4),(y-len/2),(len/2));
	}
}
