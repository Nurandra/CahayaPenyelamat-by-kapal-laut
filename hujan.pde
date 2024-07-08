class hujan{
  float x = random(width);
  float y = random(-500, -50);
  float z = random(0, 20);
  float ketebalan = map(z, 0, 20, 10, 20);
  float kecepatan = map(z, 0, 20, 1, 20);
  
  void turun(){
    y = y + kecepatan;
    float kecturun = map(z, 0, 20, 0, 0.2);
    kecepatan = kecepatan + kecturun;
    
    if (y > height){
      y = random(-200, -100);
      kecepatan = map(z, 0, 20, 4, 10);
    }
  }
  
  void show(){
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(#000000);
    line(x, y, x, y+ketebalan);
  }
}
