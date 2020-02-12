public void setup(){
	size(600,600);
	rectMode(CENTER);
	fill(20);


}
public void draw(){

	//background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));

	myFractal(300,300,450);
}

public void myFractal(int x, int y, int siz){

	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	circle(x, y, siz);
	if(siz>10){
		myFractal(x-siz/2,y/2,siz/2);
		myFractal(x+siz/2,y*2,siz/2);
		myFractal(x+siz/2,y,siz/2);
		myFractal(x+siz/2,y*4,siz/2);
	}
}
