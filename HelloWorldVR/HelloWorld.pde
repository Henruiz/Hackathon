import processing.sound.*;

ArrayList<Object> ob; 
Star[] stars = new Star[1000]; 
Text t = new Text(); 
Object o, x, s; 
float a = 0; 
float speed; 

 SoundFile file;
  String audioName = "star-wars-theme-song.mp3";
  String path;


void setup(){
 
  size(1280, 720, P3D); //canvas
  //Object 
  ob = new ArrayList<Object>(); 
  Object o = new Object(-60,-60,-60,20); 
  ob.add(o); 
  
  
  //loop to institiate stars
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
    
    
    path = sketchPath(audioName); 
    file = new SoundFile(this, path); 
    file.play(); 
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
   t.show(); 
   
   if (keyPressed) {
        if (key == 'p' || key == 'P') {
          file.play();
        }
      }
  
}
