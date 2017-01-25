
int c = 5;
public void setup()
{

	size(800,800);
}
public void draw()
{
	sierpinski(400,0,800);
}
// public void mouseDragged()//optional
// {

// }

public void sierpinski(int x, int y, int len) 
{
	
	if(len<=50){
		triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);
	}else{
		sierpinski(x,y,len/2);
		sierpinski(x-(len/4),y+(len/2),len/2);
		sierpinski(x+(len/4),y+(len/2),len/2);
	}


}