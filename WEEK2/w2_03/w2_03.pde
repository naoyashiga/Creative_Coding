/*
 * Creative Coding
 * Week 2, 03 - n squares
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * In the next iteration of the square drawing sketch, this version selects a random number of squares
 * and a random gap between them. From this it calculates the width of each square then draws the squares
 * using two nested for loops.
 *
 * A simple drop shadow is also drawn to give the illusion of depth.
 * 
 */

void setup() {
  size(600, 600);
  rectMode(CORNER);
  noStroke();
  //noLoop();
  //frameRate(1);  // set the frame rate to 1 draw() call per second
}


void draw() {

  background(200); // clear the screen to grey
  
  int num = 5;
  int gapX = 15;
  int gapY = 15;
  
  // calculate the size of each square for the given number of squares and gap between them
  float cellsize = ( width - (num + 1) * gapX ) / (float)num;
  
  // print out the size of each square
  println("cellsize = " + cellsize);
  
  // calculate shadow offset
  float offsetX = cellsize/16.0;
  float offsetY = cellsize/16.0;

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      gapX = (int) random(10, 15);
      gapY = (int) random(10, 15);

      //fill(140, 180); // shadow
      //rect(gap * (i+1) + cellsize * i + offsetX, gap * (j+1) + cellsize * j + offsetY, cellsize, cellsize);

      if(gapX < 11){
        fill(30,16,13);
      }else{
        fill(10); // rectangle

      }
      rect(gapX * (i+1) + cellsize * i, gapY * (j+1) + cellsize * j, cellsize, cellsize);
    }
  }

  //save image
  if(keyPressed == true && key == 's'){
    saveFrame("mySquare.jpg");
  }
} //end of draw 

