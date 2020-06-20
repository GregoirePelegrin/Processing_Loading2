class Segment{
  Segment precedent;
  float size;
  float radCircle;
  float angle;
  
  Segment(float s, float rc, float a){
    this.size = s;
    this.radCircle = rc;
    this.angle = a;
  }
  
  Segment(){
    this.size = lenSegment;
    this.radCircle = radiusCircle;
    this.angle = secondaryAngle;
  }
  
  void setPrecedent(Segment segment) {
    this.precedent = segment;
  }
}
