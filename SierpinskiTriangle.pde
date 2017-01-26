
int c = 5;
public void setup()
{

	size(800,800,P3D);
}
public void draw()
{
	sierpinski(0,0,0,50);
}
 public void mouseDragged(){
 	
 }

public void sierpinski(int x, int y, int z, int len) 
{
	
	if(len<=50){
		pyramid(x,y,z,len);
		//triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);
	}else{
		// sierpinski(x,y,len/2);
		// sierpinski(x-(len/4),y+(len/2),len/2);
		// sierpinski(x+(len/4),y+(len/2),len/2);
	}


}

// public void hex(int x, int y, int len){
// 	beginShape();
//     vertex(x-len/4,y);
//     vertex(x-len/2,y+len/2);
//     vertex(x-len/4,y+len);
//     vertex(x+len/4,y+len);
//     vertex(x+len/2,y+len/2);
//     vertex(x+len/4,y);
//   	endShape(CLOSE);

// }
public void pyramid(int x,int y,int z,int len){

translate(width/2, height/2, 0);
stroke(255);
rotateX(PI/2);
rotateZ(-PI/6);
noFill();

beginShape();
vertex(x,y,z);
vertex(x-(len/2), y+len, z+len/2);
vertex(x+(len/2), y+len, z+len/2);

vertex(x,y,z);
vertex(x+(len/2), y+len, z+len/2);
vertex(x,y,z-len/2);

vertex(x,y,z);
vertex(x,y,z-len/2);
vertex(x-(len/2), y+len, z+len/2);

endShape();
}