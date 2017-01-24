public void setup()
{
	size(400,400);
}
public void draw()
{
	sierpinski(200,200,100);
}
// public void mouseDragged()//optional
// {

// }
public void sierpinski(int x, int y, int len) 
{
	int c = 5;
	if(c==0){
		fill(255);
	}else{
		triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);
		sierpinski(x,y,len/2);
		c--;
	}


}