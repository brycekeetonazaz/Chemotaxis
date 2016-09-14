 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(1000,800); 
 }   
Bacteria bact = new Bacteria(500,400);
 void draw()   
 {    
 	//move and show the bacteria
 	bact.move();
 	bact.show();
 	/*if(keyPressed == true && keyCode == VK_SPACE)
 	{
 		bact.x = 500;
 		bact.y = 400;
 	}*/
 }  
 class Bacteria    
 {     
 	//lots of java!  
 	int myX, myY, myClr;
 	Bacteria(int x,int y)
 	{
 		myX=x;
 		myY=y;
 		myClr = (int)(Math.random()*255);
 	}
 	void move()
 	{
 		myX+=(int)(Math.random()*7)-3;
 		myY+=(int)(Math.random()*7)-3;
 	} 
 	void show()
 	{
 		fill(myClr);
 		ellipse(myX,myY,10,10);
 	}
 }    