//Jovan Tang
//Jan 31st 2025

//Unit 1 Reivew #2
//Animation

//color 
color daytime = #87CEEB;
color night = #000000; 
color windowsblue = #357EC7;
color grassygreen = #3F9B0B;
color leafygreen = #51B73B;
color brickred = #CB4154;
color concretebeige = #F5F5DC; 
color barkbrown = #73532A;
color sun = #FCE570; 
color moon = #FFFDE8;

//animation variables
float sunY; 
float sunVY; 
boolean day; 

void setup() {
  size(1200, 800); //600, 400 [center point]
  
  //declaring variables
  sunY = 100; 
  sunVY = 1; 
  day = true; 
}

void draw() {
  //background 
  background(daytime);
  
  //tree
  stroke(0); //trunk
  fill(barkbrown); 
  rect(width*1/5, height*3/4-200, 50, 200); 
  fill(leafygreen); //leaves
  circle(width*1/5+25, height*3/4-200, 200); 
  circle(width*1/5+25, height*3/4-300, 150); 
  
  //house
  fill(concretebeige); //base
  square(width*3/5, height*3/4-250, 250); 
  fill(brickred); //roof
  triangle(width*3/5-20, height*3/4-250, width*3/5+270, height*3/4-250, width*3/5+270/2, height*3/4-350);
  fill(windowsblue); //windows
  pushMatrix(); 
  translate(width*3/5, height*3/4-250); 
  rectMode(CENTER); 
  square(50, 125, 50); 
  square(200, 125, 50); 
  rectMode(CORNER); 
  popMatrix(); 
  
  //sun
  fill(sun); 
  circle(100, sunY, 100); 
  print(day); 
  
  sunY = sunY + sunVY; 
  if (sunY > height) {
    sunVY = -sunVY; 
    day = !day; 
  } else if (sunY < 100) {
    sunVY = -sunVY; 
  } 
  
    if (day = false) {
      fill(moon); 
      background(night); 
    }
  
   
  //grassland
  noStroke(); 
  fill(grassygreen); 
  rect(0, height*3/4, width, height*1/4); 
}
