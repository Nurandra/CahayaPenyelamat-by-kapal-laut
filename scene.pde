void sceneBadai(int x){
  background(0, 0, 50);
  laut();
  
  stroke(0);
  strokeWeight(2);
  
  // Draw the hull
  beginShape();
  fill(#88592d);
  vertex(x, 450);
  vertex(x + 500, 450);
  vertex(x + 550, 400);
  vertex(x - 50, 400);
  vertex(x, 450);
  endShape();
  
  // Draw the upper structure
  beginShape();
  vertex(x + 100, 400);
  vertex(x + 350, 400);
  vertex(x + 350, 350);
  vertex(x + 100, 350);
  vertex(x + 100, 400);
  endShape();
  
  // Draw the windows
  rect(x + 130, 360, 20, 20);
  rect(x + 170, 360, 20, 20);
  rect(x + 210, 360, 20, 20);
  
  // Draw the flag
  beginShape();
  vertex(x + 500, 400);
  vertex(x + 500, 370);
  vertex(x + 520, 380);
  vertex(x + 500, 390);
  vertex(x + 500, 370);
  endShape();
  
  bulan(100, #DCDCDC);
}

void scene1(int x, int y, float z) {
  background(0, 0, 50);
  laut();
  pulau();
  batu(500,500);
  mercusuar(100, #F3FF00);
  bulan(100, #DCDCDC);
  darman(x, y, z);
}

void scene2() {    
  background(0, 0, 50);
  laut();
  pulau();
  batu(500, 500);
  mercusuar(100, #000000);
  bulan(100, #DCDCDC);
}


void scene3(int x, int y, float z) {    
  background(0, 0, 50);
  laut();
  pulau();
  batu(500, 500);
  mercusuar(100, #e9692c);
  bulan(100, #DCDCDC);
  darmanSeparo(x, y, z);
  obor(x, y ,z);
}

void scene4() {
  background(157, 225, 242);
  laut();
  pulau();
  batu(500,500);
  bulan(100, #ed5439);
  mercusuar(100, #e9692c);
  
  //kapal
  stroke(0);
  strokeWeight(2);
  
  // Draw the hull
  beginShape();
  fill(#88592d);
  vertex(x, 450);
  vertex(x + 500, 450);
  vertex(x + 550, 400);
  vertex(x - 50, 400);
  vertex(x, 450);
  endShape();
  
  // Draw the upper structure
  beginShape();
  vertex(x + 100, 400);
  vertex(x + 350, 400);
  vertex(x + 350, 350);
  vertex(x + 100, 350);
  vertex(x + 100, 400);
  endShape();
  
  // Draw the windows
  rect(x + 130, 360, 20, 20);
  rect(x + 170, 360, 20, 20);
  rect(x + 210, 360, 20, 20);
  
  // Draw the flag
  beginShape();
  vertex(x + 500, 400);
  vertex(x + 500, 370);
  vertex(x + 520, 380);
  vertex(x + 500, 390);
  vertex(x + 500, 370);
  endShape();
  
  if (bergerak) {
    x -= 20; // Bergerak ke kiri
    if (x <= 480) { // Berhenti di tengah layar
      bergerak = false;
    }
  }
}
