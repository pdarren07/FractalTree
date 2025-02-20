private double fractionLength = .9; 
private int smallestBranch = 15; 
private double branchAngle = 0.7;  
public void setup() 
{   
  background(200);
  size(750,750);    
  noLoop(); 
} 
public void draw() 
{   
  stroke(120, 50, 50);   
  line(375,500,375,400);   
  drawBranch(375,400,150,3*Math.PI/2);
  drawBranch(375,300,150,-3*Math.PI/2);
  fill(255);
  strokeWeight(1);
  ellipse((width/2) + 25, 150, 10, 10);
  ellipse((width/2) - 25, 150, 10, 10);
  stroke(255);
  strokeWeight(4);
  line(width/2, 190, width/2 + 20, 170);
  line(width/2, 190, width/2 - 20, 170);
} 
public void drawBranch(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  double angle3 = angle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  int endX3 = (int)(branchLength*Math.cos(angle3) + x);
  int endY3 = (int)(branchLength*Math.sin(angle3) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  line(x, y, endX3, endY3);
  if(branchLength > smallestBranch)
  {
    drawBranch(endX1, endY1, branchLength-5, angle1);
    drawBranch(endX2, endY2, branchLength-5, angle2);
    drawBranch(endX3, endY3, branchLength-5, angle3);
  }
  
} 
