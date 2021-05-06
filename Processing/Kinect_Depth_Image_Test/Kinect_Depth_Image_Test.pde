import org.openkinect.processing.*;

Kinect kinect;

void setup() {
  size(512,424);
  kinect = new Kinect(this);
  // kinect.initDevice();
  
  kinect.initDepth(); 
  kinect.initVideo();
}

void draw(){
  background(0);
  //PImage img = kinect.getDepthImage();
  PImage img = kinect.getVideoImage();
  image(img, 0, 0);
}
