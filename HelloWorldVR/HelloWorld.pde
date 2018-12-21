ArrayList<Object> ob; 
Star[] stars = new Star[1000]; 
Text t = new Text(); 
Object o, x, s; 
float a = 0; 
float speed; 

void setup(){
 
  size(1280, 720, P3D); //canvas
  //Object 
  ob = new ArrayList<Object>(); 
  Object o = new Object(-60,-60,-60,20); 
  ob.add(o); 
  
  
  //loop to institiate stars
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star(); 
  }
}


void draw(){ 
  background(0); //background
  stroke(255); //background
  noFill(); //object
  lights(); //object
  
  //Object rotation physics
  translate(width/2, height/2);
 
  
  speed = map(mouseX, 0, width, 0, 30);
  
  //making the stars
  for (int i = 0; i < stars.length; i++){
    stars[i].update(); 
    stars[i].show(); 
  }
  a += 0.01; 
  
  rotateX(a*0.04);
  rotateY(a*0.04); 
  rotateZ(a*0.04);
   t.show(); 
   
 
  
}
