int numFrames = 2;
int currentFrame = 0;
String frameStr;
int frRate;
PImage[] images = new PImage[2];

void setup() {
  size(640, 360);
  String[] lines = loadStrings("frameRate.txt");
  if (lines[0] == null) exit();
  frameStr = lines[0];
  frRate = int(frameStr);
  frameRate(frRate);
  
  images[0]  = loadImage("1.png");
  images[1]  = loadImage("2.png"); 
} 
 
void draw() {
  background(0);
  currentFrame = (currentFrame+1) % numFrames;
  image(images[currentFrame], 0, 0);
}