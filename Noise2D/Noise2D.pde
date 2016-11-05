float increment = 0.01;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  loadPixels();

  float xoff = 0.0;

  for (int x = 0; x < width; x++) {
    float yoff = 0.0;

    for (int y = 0; y < height; y++) {
      float bright = map(noise(xoff, yoff), 0, 1, 0, 255);
      pixels[x + y * width] = color(bright);
      yoff += increment;
    }
    xoff += increment;
  }

  updatePixels();
}
