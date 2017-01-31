
int c = 800;
public void setup()
{

	background(0);
	size(800,800);
	color c = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	//translate(width/2, height/2, 0);
}
public void draw()
{
	sierpinski(400,0,800);
	// if (mousePressed==true){
	// 	c--;
 // 		if(c<20){
 // 			c=20;
	// 	}
	// }
	// if(keyPressed==true&&key=='w'){
	// 	b++;
	// 	rotateZ(b);
	// }else if (keyPressed==true&&key=='s') {
	// 	a++;
	// 	rotateZ(a);
	// 	System.out.println("hi");
		
	// }
}
 public void mouseDragged(){
 	
 }



public void sierpinski(int x, int y, int len) 
{
	
	if(len<=40){
		//pyramid(x,y,z,len);
		stroke(0,0,200);
		fill(c);
		triangle(x, y, x-(len/2), y+len, x+(len/2), y+len);

	}else{
		sierpinski(x,y,len/2);
		sierpinski(x-(len/4),y+(len/2),len/2);
		sierpinski(x+(len/4),y+(len/2),len/2);
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
// public void pyramid(int x,int y,int z,int len){

// 	translate(width/2, height/2, 0);
// 	stroke(255);
// 	// rotateX(PI/2);
// 	// rotateZ(PI/2);
// 	 rotateY(PI/4);
// 	noFill();

// 	beginShape();
// 	vertex(x,y,z);
// 	vertex(x-(len/2), y+len, z+len/2);
// 	vertex(x+(len/2), y+len, z+len/2);

// 	vertex(x,y,z);
// 	vertex(x+(len/2), y+len, z+len/2);
// 	vertex(x,y,z-len/2);

// 	vertex(x,y,z);
// 	vertex(x,y,z-len/2);
// 	vertex(x-(len/2), y+len, z+len/2);

// 	endShape();
// }