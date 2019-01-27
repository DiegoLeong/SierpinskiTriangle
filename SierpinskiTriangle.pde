public void setup()
{	
	noStroke();
	size(1000,1000);
}
public void draw()
{
	sierpinski(0,0,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{	
	if(len<=200)
	{
		triangle(x, y, len, y, x+len/2,len);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y+len/2,len/2);
	}
}