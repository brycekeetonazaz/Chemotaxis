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
 }  
 class Bacteria    
 {     
 	//lots of java!  
 	int myX, myY, myRX,myRY, myClr;
 	Bacteria(int x,int y)
 	{
 		myX=x;
 		myY=y;
 		myRX = mouseX;
 		myRY = mouseY;
 		myClr = (int)(Math.random()*255);
 	}
 	void move()
 	{
 		myRX = mouseX;
 		myRY = mouseY;
 		if(mouseX<myX)
 		{
 			myX+=(int)((Math.random()*10));
 		}
 		if(mouseY<myY)
 		{
 			myY+=(int)((Math.random()*10));
 		}
 		if(mouseX>myX)
 		{
 			myX-=(int)((Math.random()*10));
 		}
 		if(mouseY>myY)
 		{
 			myY-=(int)((Math.random()*10));
 		}
 		
 	} 
 	void show()
 	{
 		fill(myClr);
 		ellipse(myX,myY,10,10);
 	}
 }    