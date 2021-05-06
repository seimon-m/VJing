

import org.openkinect.processing.*;

Kinect kinect;

void setup() {
  size(1200, 800);
  kinect = new Kinect(this);
  kinect.initDepth();
  kinect.initVideo();
  //kinect.enableIR(true);
}

void draw() {
  background(0);
  PImage img1 = kinect.getDepthImage();
  PImage img2 = kinect.getVideoImage();
  image(img1, 0, 0, width/2, height/2);
  image(img2, 600, 000, width/2, height/2);
}
