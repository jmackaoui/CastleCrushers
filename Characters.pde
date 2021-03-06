public class Human {
  final int MOVESPEED=5;
  public float centerX, centerY, size, rotateLeg, rotateArm;
  public boolean movingUp, movingDown, movingRight, movingLeft;
  public PImage img;

  Human(float x, float y, float sz) {
    this.centerX=x;
    this.centerY=y;
    this.size=sz;
    this.rotateLeg=0;
  }

  public void setImage() {
  }

  public void draw() {
    //  ellipse(this.centerX, this.centerY, this.size, this.size);

    pushMatrix();
    translate(this.centerX, centerY);
    scale(this.size); // I think a scale of 2x or 3x is best but we can discuss

    if (movingUp) {

      // Legs 

      pushMatrix();
      fill(255);
      translate(0, 5);
      translate(5, 19);
      rotate(-rotateLeg);
      translate(-5, -19);
      rect(5, 18, 4, 10);
      popMatrix();

      pushMatrix();
      fill(255);
      translate(9, 5);
      translate(0, 19);
      rotate(rotateLeg);
      translate(0, -19);
      rect(0, 18, 4, 10);
      popMatrix();


      // Body
      fill(255);
      beginShape();
      vertex(0, 15);
      vertex(18, 15);
      vertex(14, 27);
      vertex(4, 27);
      vertex(0, 15);
      endShape();

      // Helmet
      fill(205, 50, 50);
      beginShape();
      vertex(1, 0);
      vertex(1, 16);
      vertex(9, 23);
      vertex(17, 16);
      vertex(17, 0);
      vertex(9, -2);
      vertex(1, 0);
      endShape();
    }

    if (movingDown) {

      // Legs 

      pushMatrix();
      fill(255);
      translate(0, 5);
      translate(5, 19);
      rotate(-rotateLeg);
      translate(-5, -19);
      rect(5, 18, 4, 10);
      popMatrix();

      pushMatrix();
      fill(255);
      translate(9, 5);
      translate(0, 19);
      rotate(rotateLeg);
      translate(0, -19);
      rect(0, 18, 4, 10);
      popMatrix();

      // Body
      fill(255);
      beginShape();
      vertex(0, 15);
      vertex(18, 15);
      vertex(14, 27);
      vertex(4, 27);
      vertex(0, 15);
      endShape();

      // Helmet
      fill(205, 50, 50);
      beginShape();
      vertex(1, 0);
      vertex(1, 16);
      vertex(9, 23);
      vertex(17, 16);
      vertex(17, 0);
      vertex(9, -2);
      vertex(1, 0);
      endShape();

      // Faceplate
      fill(255);
      beginShape();
      vertex(9, 3);
      vertex(13, 1);
      vertex(13, 8);
      vertex(17, 8);
      vertex(17, 14);
      vertex(13, 14);
      vertex(13, 20);
      vertex(9, 23);
      vertex(5, 20);
      vertex(5, 14);
      vertex(1, 14);
      vertex(1, 8);
      vertex(5, 8);
      vertex(5, 1);
      vertex(9, 3);
      endShape();

      // Eyes
      fill(0);
      triangle(6, 12, 3, 10, 3, 12);
      triangle(12, 12, 15, 10, 15, 12);
    }

    if (movingLeft) {

      // Legs 

      pushMatrix();
      fill(255);
      translate(5, 5);
      translate(5, 19);
      rotate(-rotateLeg);
      translate(-5, -19);
      rect(5, 18, 4, 10);
      popMatrix();

      pushMatrix();
      fill(255);
      translate(7, 5);
      translate(0, 19);
      rotate(rotateLeg);
      translate(0, -19);
      rect(0, 18, 4, 10);
      popMatrix();

      // Body
      fill(255);
      ellipse(10, 20, 10, 15);

      // Helmet
      fill(205, 50, 50);
      beginShape();
      vertex(0, 0);
      vertex(0, 20);
      vertex(15, 15);
      vertex(15, 0);
      vertex(7, -2);
      vertex(0, 0);
      endShape();

      // Faceplate
      fill(255);
      beginShape();
      vertex(0, 3);
      vertex(4, 1);
      vertex(4, 8);
      vertex(10, 8);
      vertex(10, 14);
      vertex(4, 14);
      vertex(4, 21);
      vertex(0, 21);
      vertex(0, 3);
      endShape();

      // Eyes
      fill(0);
      triangle(3, 12, 7, 9, 7, 12);

      // Ear Plate
      fill(205, 50, 50);
      ellipse(10, 11, 3, 6);

    }

    if (movingRight) {

      // Legs 

      pushMatrix();
      fill(255);
      translate(2, 5);
      translate(5, 19);
      rotate(-rotateLeg);
      translate(-5, -19);
      rect(5, 18, 4, 10);
      popMatrix();

      pushMatrix();
      fill(255);
      translate(3, 5);
      translate(0, 19);
      rotate(rotateLeg);
      translate(0, -19);
      rect(0, 18, 4, 10);
      popMatrix();
      // Body
      fill(255);
      ellipse(7, 20, 10, 15);

      // Helmet
      fill(205, 50, 50);
      beginShape();
      vertex(15, 0);
      vertex(15, 20);
      vertex(0, 15);
      vertex(0, 0);
      vertex(6, -2);
      vertex(15, 0);
      endShape();

      // Faceplate
      fill(255);
      beginShape();
      vertex(15, 3);
      vertex(11, 1);
      vertex(11, 8);
      vertex(5, 8);
      vertex(5, 14);
      vertex(11, 14);
      vertex(11, 21);
      vertex(15, 21);
      vertex(15, 3);
      endShape();

      // Eyes
      fill(0);
      triangle(12, 12, 8, 9, 8, 12);

      // Ear Plate
      fill(205, 50, 50);
      ellipse(5, 11, 3, 6);
    }
    popMatrix();
  }

  public void update() {
    if (movingRight && this.centerX+this.size/2+MOVESPEED<=width)
      this.centerX+=MOVESPEED;
    else if (movingRight)
      this.centerX=width-this.size/2;
    if (movingLeft && this.centerX-this.size/2-MOVESPEED>=0)
      this.centerX-=MOVESPEED;
    else if (movingLeft)
      this.centerX=0+this.size/2;
    if (movingUp && this.centerY-this.size/2-MOVESPEED>=0)
      this.centerY-=MOVESPEED;
    else if (movingUp)
      this.centerY=0+this.size/2;
    if (movingDown && this.centerY+this.size/2+MOVESPEED<=height)
      this.centerY+=MOVESPEED;
    else if (movingDown)
      this.centerY=height-this.size/2;
      

  }
}

public class Enemy {
  Enemy() {
  }
}