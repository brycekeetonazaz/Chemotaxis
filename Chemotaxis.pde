 //declare bacteria variables here 
 boolean mouseIsPressed = false;  
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(1000,800); 
 }
 Bacteria bact;
 void draw()   
 {    
 	//move and show the bacteria
 	background(255,0,0);
 	if(mouseIsPressed == true)
 	{
 		bact.move();
 		bact.show();
 	}
 	
 	
 	
 }  
 void mousePressed()
 {
 	for(int i = 0; i < 10; i ++)
 	{
 		bact = new Bacteria(mouseX,mouseY);
 	}
 	mouseIsPressed = true;
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