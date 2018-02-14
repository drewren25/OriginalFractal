int a = 800;
int b = 800;
float v = 0;
public void setup(){
  size(500, 650);
  rectMode(CENTER);
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
}
public void draw(){
  background(0);
  smart(300, 600, 150, 100, 1, 5, 58, 30);
}
void mouseMoved(){
  v = v + .01;
  if (v == 50) {
    v = 0;
  }
}
void mouseClicked(){
  v--;
  if (v == -50) {
    v = 0;
  }
}
public void smart(float x, float y, float bob, float Frodo, float guitar, float erech, float Apple, float acer){
float dell = (acer*x)/(Apple+acer);
  float Wesley = (acer*y)/(Apple+acer);
  if(guitar >= 100 || erech <= 0){
    noFill();
  }else{
    smart(x, y, bob + erech, Frodo + erech, guitar + erech, erech - .1, Apple - .1, acer + v);
    noFill();
    triangle(dell, Wesley, guitar*2 + bob, guitar*2 + Frodo, x, y);
  }
}