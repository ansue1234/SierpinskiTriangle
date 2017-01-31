
public void setup()
{

	background(0);
	size(800,800);
	r = (int)(Math.random()*255);
	g = (int)(Math.random()*255);
	b = (int)(Math.random()*255);
}
public void draw()
{
	sierpinski(400,0,800);
	
}
 
public void sierpinski(int x, int y, int len) 
{
	
	if(len<=40){
		
		stroke(0,0,200);
		fill(r,g,b);
		triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);

	}else{
		sierpinski(x,y,len/2);
		sierpinski(x-(len/4),y+(len/2),len/2);
		sierpinski(x+(len/4),y+(len/2),len/2);
	}


}

