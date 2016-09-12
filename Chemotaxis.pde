 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(1000,800); 
 	
 }   
 void draw()   
 {    
 	//move and show the bacteria

 }  
 class Bacteria    
 {     
 	//lots of java!  
 	int myX, myY, myClr;
 	Bacteria(x,y,clr)
 	{
 		myX=x;
 		myY=y;
 		myClr = (int)(Math.random()*255);
 	}
 	void move()
 	{
 		x+=(int)((Math.random()*5)-3);
 		y+=(int)((Math.random()*5)-3);
 	} 
 	void show()
 	{
 		fill(myClr);
 		ellipse(myX,myY,10,10);
 	}
 }    