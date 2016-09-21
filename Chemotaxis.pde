 //declare bacteria variables here 
 boolean mouseIsPressed = false;  
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(1000,800); 
 }
 Bacteria [] colony = new Bacteria[(int)(Math.random()*1000)+1000];
 void draw()   
 {    
 	//move and show the bacteria
 	background(255,0,0);
 	if(mouseIsPressed == true)
 	{
 		for(int i = 0; i < colony.length-1; i ++)
	 	{
	 		colony[i].move();
	 		colony[i].show();
	 	}
	 }
 }  
 void mousePressed()
 {
 	for(int i = 0; i < colony.length-1; i ++)
 	{
 		colony[i] = new Bacteria(mouseX,mouseY);
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
 		myClr = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
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