//declare and init variables
//number of numbers in the array
int numNumbers =20;
//list of numbers that  I'm going to sort
int [] numbers = new int [numNumbers];
//this is probably the width of the rectangles
float rectWidth =1.0;
//this probably controls what step we're at???
int step =0;
//this should be about if the array is sorted.
boolean sorted = false;

void setup() {
  //window setup
  size(1200, 900);
  background(255);
  frameRate(10);
  //populate with random numbers up to the height of the screen
  for (int i =0; i <numbers.length; i++) {
    numbers[i] = int(random(height));
  }
  //recalculate rect width
  rectWidth = width/numNumbers;
  
 //call drawRect pass -1 and -1.
  drawRect(-1, -1);
}

void gnomeSortStep(){
  
}
//takes two args, the indexes of the rectangles being compared...
void drawRect(int a, int b) {
  background(255);
  for (int i =0; i <numbers.length; i++) {
    if (i ==a ) {
      //fill to green
      fill(0, 255, 0);
    } else if (i==b) {
      //fill to red
      fill(255, 0, 0);
    } else {
      //fill to blue
      fill(0, 0, 255);
    }
    //rectangles drawn from bottom of screen up.
    //note the height is negative... this still works...
    rect(i*rectWidth, height, rectWidth, -numbers[i]);
  }
}
