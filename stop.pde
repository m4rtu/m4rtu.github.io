
PFont zigBlack;
int num = 50;
int[] x = new int[num];
int[] y = new int[num];
int a =10;

void setup() {
  size(700, 700);
  noStroke();
  zigBlack = createFont("Ziggurat-Black", 32);
  textFont(zigBlack);
  frameRate(5);
  
}

void draw() {
    if (mousePressed == true){
  background(random(255),random(255),random(255));
  }
  
  textSize(32); // Set text size to 32
  translate(0,mouseY);
  fill(mouseX,mouseY, mouseY);
  rectMode(CENTER);
  text("#STOPMACHITROLLS", width/4, height/4);
 /* rect(0,0,random(200),random(200));*/

  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Add the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;
  // Draw the circles
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], i/2.0, i/2.0);
  }
}