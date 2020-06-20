float radiusCircle;
float lenSegment;
float primaryAngle;
float secondaryAngle;
int nbrSegments;
boolean complete;

void setup(){
  size(600, 600);
  radiusCircle = 70;
  lenSegment = 20;
  primaryAngle = 0;
  secondaryAngle = 0;
  nbrSegments = 10;
  complete = false;
}

void draw(){
  background(0);
  translate(width/2, height/2);
  
  noFill();
  stroke(255);
  strokeWeight(3);
 
  rotate(primaryAngle);
  
  translate(0, -radiusCircle);
  rotate(secondaryAngle);
  line(-(lenSegment/2), 0, lenSegment/2, 0);
  rotate(-secondaryAngle);
  translate(0, radiusCircle);
  secondaryAngle += PI/30;
  if(secondaryAngle > PI){
    secondaryAngle = 0;
    complete = true;
  }
  
  for(int i=1; i<nbrSegments; i++){
    rotate(2*PI/nbrSegments);
    line(-(lenSegment/2), -radiusCircle, (lenSegment/2), -radiusCircle);
  }
  if(complete){
    complete = false;
    primaryAngle += 2*PI/nbrSegments;
  }
}
