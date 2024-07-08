
void laut(){
  fill(0, 0, 100);
  rect(0, height/2, width, height/2);
}

void pulau(){
  fill(#FAD39B);
  float islandWidth = width * 1;   // Lebar pulau
  float islandHeight = height * 0.7; // Tinggi pulau
  float islandX = width * 0.05;      // Posisi X pulau
  float islandY = height * 0.9;     // Posisi Y pulau
  beginShape();
  ellipse(islandX, islandY, islandWidth, islandHeight);
  endShape(CLOSE);
}

void batu(int x, int y){
  strokeWeight(2);
  stroke(#325b94);
  fill(#af5324);
  ellipse(x, y, x-400, y-420);
  ellipse(x+150, y+100, x-400, y-420);
}

void mercusuar(int x, color warna){
  strokeWeight(1);
  stroke(#325b94);
  fill(#D62D2D);
  quad(x, x+40, x+200, x+40, x+150, x-20, x+50, x-20);

  strokeWeight(1);
  stroke(#325b94);
  fill(#FBF1EA);
  rect(x, x+41 , x+100, x+100);

  strokeWeight(1);
  stroke(#325b94);
  fill(#FBF1EA);
  rect(x-50, x+200 , x+200, x+100);

  strokeWeight(1);
  stroke(#325b94);
  fill(#D62D2D);
  rect(x-50,x+400 , x+200, x);

  strokeWeight(2);
  stroke(#325b94);
  fill(warna);
  ellipse(x+100, x+10, x-50, x-40);

  strokeWeight(2);
  stroke(#325b94);
  fill(#FFFFFF);
  ellipse(x+100, x+110, x, x+10);

  strokeWeight(2);
  stroke(#325b94);
  fill(#FFFFFF);
  ellipse(x+100, x+110, x, x+10);
}

void bulan(int x, color warna){
  strokeWeight(2);
  stroke(#325b94);
  fill(warna);
  ellipse(x+900, x-50, x-40, x-35);
}

void darman(int x, int y, float z){
  
  pushMatrix();
  translate(x, y);
  scale(z);
  
  // Badan (Baju)
  fill(135, 206, 235);  // Warna biru muda untuk baju
  noStroke();
  beginShape();
  vertex(150, 250);
  bezierVertex(140, 300, 130, 400, 150, 450);
  vertex(250, 450);
  bezierVertex(270, 400, 260, 300, 250, 250);
  endShape(CLOSE);
  
  // Perut (untuk memberikan volume)
  stroke(100, 155, 180);  // Warna lebih gelap untuk detail baju
  noFill();
  bezier(160, 300, 180, 350, 180, 400, 160, 450);
  bezier(240, 300, 220, 350, 220, 400, 240, 450);
  
  // Kepala
  noStroke();
  fill(255, 224, 189);  // Warna kulit
  ellipse(200, 175, 150, 150);
  
  // Leher
  stroke(255, 224, 189);  // Warna kulit
  strokeWeight(10);
  line(185, 240, 215, 240);
  
  // Rambut
  noStroke();
  fill(50, 30, 0);  // Warna rambut cokelat gelap
  beginShape();
  vertex(125, 175);
  bezierVertex(150, 100, 250, 100, 275, 175);
  vertex(275, 140);
  bezierVertex(250, 80, 150, 80, 125, 140);
  endShape(CLOSE);
  
  // Mata
  fill(255);
  ellipse(175, 160, 30, 30);
  ellipse(225, 160, 30, 30);
  fill(70, 50, 30);  // Warna mata cokelat
  ellipse(175, 160, 15, 15);
  ellipse(225, 160, 15, 15);
  
  // Mulut
  noFill();
  stroke(200, 80, 80);  // Warna merah muda untuk bibir
  strokeWeight(2);
  arc(200, 200, 60, 30, 0, PI);
  
  // Tangan kiri
  fill(255, 224, 189);  // Warna kulit
  stroke(255, 224, 189);
  strokeWeight(20);
  line(160, 270, 130, 420);
  
  // Tangan kanan (mengangkat ke atas)
  stroke(255, 224, 189);
  strokeWeight(20);
  line(240, 270, 270, 330);
  line(270, 330, 310, 240);
  
  
  // Kaki (dengan volume)
  fill(70, 130, 180);  // Warna biru steel untuk celana
  noStroke();
  // Kaki kiri
  beginShape();
  vertex(165, 450);
  bezierVertex(160, 500, 160, 550, 175, 580);
  bezierVertex(190, 550, 190, 500, 185, 450);
  endShape(CLOSE);
  
  // Kaki kanan
  beginShape();
  vertex(235, 450);
  bezierVertex(240, 500, 240, 550, 225, 580);
  bezierVertex(210, 550, 210, 500, 215, 450);
  endShape(CLOSE);
  
  // Sepatu
  fill(50);  // Warna abu-abu gelap untuk sepatu
  beginShape();
  vertex(155, 580);
  bezierVertex(165, 590, 185, 590, 195, 580);
  bezierVertex(185, 585, 165, 585, 155, 580);
  endShape();
  
  beginShape();
  ellipse(220, 580, 50, 20);
  ellipse(170, 580, 50, 20);
  endShape();
  popMatrix();
}

void obor(int x, int y, float z){
  pushMatrix();
  translate(x, y);
  scale(z);
  
  stroke(139, 69, 19);  // Warna cokelat untuk gagang obor
  strokeWeight(20);
  line(310, 260, 310, 180);
  
  // Api obor
  noStroke();
  fill(255, 140, 0);  // Warna oranye untuk api
  beginShape();
  vertex(310, 180);
  bezierVertex(300, 90, 340, 90, 330, 130);
  endShape();
  beginShape();
    vertex(310, 180);
    bezierVertex(280, 90, 300, 90, 310, 130);
   endShape();
popMatrix();
}

void darmanSeparo(int x, int y, float z){
    pushMatrix();
  translate(x, y);
  scale(z);
  
  // Badan (Baju)
  fill(135, 206, 235);  // Warna biru muda untuk baju
  noStroke();
  beginShape();
  vertex(150, 250);
  bezierVertex(140, 300, 130, 400, 150, 450);
  vertex(250, 450);
  bezierVertex(270, 400, 260, 300, 250, 250);
  endShape(CLOSE);
  
  // Perut (untuk memberikan volume)
  stroke(100, 155, 180);  // Warna lebih gelap untuk detail baju
  noFill();
  bezier(160, 300, 180, 350, 180, 400, 160, 450);
  bezier(240, 300, 220, 350, 220, 400, 240, 450);
  
  // Kepala
  noStroke();
  fill(255, 224, 189);  // Warna kulit
  ellipse(200, 175, 150, 150);
  
  // Leher
  stroke(255, 224, 189);  // Warna kulit
  strokeWeight(10);
  line(185, 240, 215, 240);
  
  // Rambut
  noStroke();
  fill(50, 30, 0);  // Warna rambut cokelat gelap
  beginShape();
  vertex(125, 175);
  bezierVertex(150, 100, 250, 100, 275, 175);
  vertex(275, 140);
  bezierVertex(250, 80, 150, 80, 125, 140);
  endShape(CLOSE);
  
  // Mata
  fill(255);
  ellipse(175, 160, 30, 30);
  ellipse(225, 160, 30, 30);
  fill(70, 50, 30);  // Warna mata cokelat
  ellipse(175, 160, 15, 15);
  ellipse(225, 160, 15, 15);
  
  // Mulut
  noFill();
  stroke(200, 80, 80);  // Warna merah muda untuk bibir
  strokeWeight(2);
  arc(200, 200, 60, 30, 0, PI);
  
  // Tangan kiri
  fill(255, 224, 189);  // Warna kulit
  stroke(255, 224, 189);
  strokeWeight(20);
  line(160, 270, 130, 420);
  
  // Tangan kanan (mengangkat ke atas)
  stroke(255, 224, 189);
  strokeWeight(20);
  line(240, 270, 270, 330);
  line(270, 330, 310, 240);
  
  popMatrix();
}

void orang(int x, int y, float z){
  pushMatrix();
  translate(x, y);
  scale(z);
  stroke(0);
  strokeWeight(2);
  
  // Kepala
  fill(255, 224, 189);  // Warna kulit
  ellipse(200, 150, 120, 120);
  
  // Rambut
  fill(139, 69, 19);  // Warna rambut cokelat
  beginShape();
  vertex(150, 110);
  bezierVertex(170, 80, 230, 80, 250, 110);
  endShape(CLOSE);
  
  // Mata
  fill(255);
  ellipse(180, 140, 15, 15);
  ellipse(220, 140, 15, 15);
  fill(0);
  ellipse(180, 140, 8, 8);
  ellipse(220, 140, 8, 8);
  
  // Mulut
  noFill();
  stroke(200, 80, 80);
  arc(200, 170, 40, 20, 0, PI);
  
  // Badan (Kemeja)
  stroke(0);
  fill(200, 230, 255);  // Warna biru muda untuk kemeja
  beginShape();
  vertex(170, 210);
  vertex(160, 350);
  vertex(240, 350);
  vertex(230, 210);
  endShape(CLOSE);
  
  // Kerah baju
  line(180, 210, 220, 210);
  line(180, 210, 190, 230);
  line(220, 210, 210, 230);
  
  // Tangan
  fill(255, 224, 189);  // Warna kulit
  // Tangan kiri
  beginShape();
  vertex(170, 220);
  vertex(140, 300);
  vertex(160, 310);
  vertex(180, 240);
  endShape(CLOSE);
  
  // Tangan kanan (memegang amplop)
  beginShape();
  vertex(230, 220);
  vertex(260, 300);
  vertex(240, 310);
  vertex(220, 240);
  endShape(CLOSE);
  
  // Celana
  fill(70, 130, 180);  // Warna biru steel untuk celana
  beginShape();
  vertex(160, 350);
  vertex(150, 450);
  vertex(190, 450);
  vertex(200, 350);
  endShape(CLOSE);
  
  beginShape();
  vertex(200, 350);
  vertex(210, 450);
  vertex(250, 450);
  vertex(240, 350);
  endShape(CLOSE);
  
  // Sepatu
  fill(50);  // Warna abu-abu gelap untuk sepatu
  arc(170, 450, 40, 20, PI, TWO_PI);
  arc(230, 450, 40, 20, PI, TWO_PI);
  
  // Amplop
  pushMatrix();
  translate(240, 300);
  rotate(radians(-15));
  fill(255, 250, 200);  // Warna krem untuk amplop
  rect(0, 0, 40, 30);
  fill(255, 240, 180);  // Warna sedikit lebih gelap untuk lipatan amplop
  triangle(0, 0, 20, 15, 40, 0);
  popMatrix();
  popMatrix();
}

void petir(int x, int y, float z){
  pushMatrix();
  translate(x, y);
  scale(z);

  noStroke();
  fill(255, 215, 0);  // Golden yellow color
  
  beginShape();
  vertex(0, 0);
  vertex(15, 0);
  vertex(8, 20);
  vertex(20, 18);
  vertex(-5, 50);
  vertex(0, 30);
  vertex(-8, 30);
  vertex(0,0);
  endShape(CLOSE);

  popMatrix();
}
