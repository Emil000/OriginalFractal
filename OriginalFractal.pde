public void setup()
{
	size(500,500);
	ellipseMode(CENTER);
	rectMode(CENTER);
	stroke(200);
	//fill(70,120,100);
	noFill();
}

public void draw()
{
	background(0);
	fractal(85, 60, 10, 10, 90, 90, 15, 80, 10);
}

public void fractal(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, int m)
{
	if ( m >= 200)
	{
		//strokeWeight(m);
		bezier(x1, y1, x2, y2, x3, y3, x4, y4);
		//bezier(0.25*x1, y1, 0.25*x2, y2, 0.25*x3, y3, 0.25*x4, y4);
		bezier(x3, y3 , x2, y2, -x1, y1, -x4, y4);
	}
		
	else 
	{
		fractal(2*x1, y1, m+x2, m+y2, x3-m, y3-m, m+x4, m+y4, m*2);
		fractal(x1-m, y1-m, m+x2*(1), m+y2*(1), x3-m, y3-m, m+x4, m+y4, m*2);
		fractal(3*x1+m, m+y1, m+x2, m+y2, m+x3, m+y3, m+x4, m+y4, m*2);
		fractal(x1*2, y1-m, m+x2, m+y2, 4*x3-m, 4*y3-m, m+x4, m+y4, m*2);
	}
		
}