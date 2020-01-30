ArrayList<Ripple> rippleList;

void setup() {
 size(800,800);
 
 rippleList = new ArrayList<Ripple>();
 
 int i = 0;
 while(i < 100) {
 rippleList.add( new Ripple() );
 i = i + 1;
 }
}

void draw() {
  background(0);
  
  int i = 0;
  while(i < 100) {
   Ripple myRipple = rippleList.get(i);
   myRipple.act();
   myRipple.show();
   i = i + 1;
  }
}
