class Object{
  
 //Location of hello world 2d/3d rendering
 PVector position; 
 float r; 
 
 //Making box for given coordinates of our object
 Object(float x, float y, float z, float q){
 position = new PVector(x,y,z); 
 r = q; 
 }
 
 
 
 /*
 *Generating new objects as an Array to the Object
 *Returning the Array of Cubes
 */
 ArrayList<Object> generate(){ 
   ArrayList<Object> objects = new ArrayList<Object>(); 
     for (int x = -1; x < 2 ; x++){
     for (int y = -1; y < 2 ; y++){
       for (int z = -1; z < 2 ; z++){
         int sum = abs(x) + abs(y) + abs(z);
         float R = r/3;
         if (sum >1){
             Object c = new Object(position.x+x*R, position.y+y*R, position.z+z*R, R); 
             objects.add(c); 
           }
         }
       }
     }
   
   return objects; 
 }
 
 
 //Making the object appear
 void show(){
   pushMatrix();
   
   translate(position.x, position.y, position.z);
   fill(255); 
   noStroke(); 
   box(r); 
   popMatrix(); 
   rotateX(a*0.4);
  rotateY(a*0.4); 
  rotateZ(a*0.4);
 }
 
 
}
