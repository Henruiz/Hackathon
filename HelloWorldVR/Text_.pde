class Text{
  
   float x; 
   float y; 
   float z; 
   float h; 
   float w; 
   String hello;
   
  Text(){
   hello = new String ("HELLO WORLD!");
   x = -10; 
   y = -80; 
   z = 0; 
   w = 150; 
   h = 150; 
  }

void show(){
    //pushMatrix();
    //rotateY(map(mouseX,0,width,-PI,PI));
    //rotateX(map(mouseY,0,width,-PI,PI));
    fill(195); 
    textSize(32); 
    text(hello, x, y, w, h);
    //popMatrix(); 
}
}
