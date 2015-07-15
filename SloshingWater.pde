void setup(){
  size(500,500);
  background(220,220,220);
}

float c = 0.01;
float x;
float y = PI / 4;
float z;
int i;
int s;

void draw(){
 //background(255,255,255);
 fill(100,100);
 rect(-1,-1,501,501);
 fill(0,0,0);
 
// for(i = 10; i < 16; i++){
//   ellipse(250 * x + 250, 500 - pow(sqrt(500/(.1 * i)) * x, 2), 10, 10);
// }
// for(i = 15; i < 75; i += 5){
//   ellipse(250 * x + 250, 500 - pow(sqrt(500/(.1 * i)) * x, 2), 10, 10);
// }
// for(i = 75; i < 1000; i += 100){
//   ellipse(250 * x + 250, 500 - pow(sqrt(500/(.1 * i)) * x, 2), 10, 10);
// }
// 
// 
// for(i = 10; i < 16; i++){
//   ellipse(250 * z + 250, 500 - pow(sqrt(500/(.1 * i)) * z, 2), 10, 10);
// }
// for(i = 15; i < 75; i += 5){
//   ellipse(250 * z + 250, 500 - pow(sqrt(500/(.1 * i)) * z, 2), 10, 10);
// }
// for(i = 75; i < 1000; i += 100){
//   ellipse(250 * z + 250, 500 - pow(sqrt(500/(.1 * i)) * z, 2), 10, 10);
// }
y += c;
x = abs(sin(y));
z = -abs(sin(y + PI / 2));
for(s = 0; s < 1000; s += 100){
 x = abs(sin(y + (s / 100)));
 z = -abs(sin(y + PI / 2 + (s / 100)));
 for(i = 10; i < 100; i++){
   ellipse(250 * x + 250, 500 - pow(sqrt(500/(.1 * i)) * x, 2), 10, 10);
 }
 for(i = 10; i < 100; i++){
   ellipse(250 * z + 250, 500 - pow(sqrt(500/(.1 * i)) * z, 2), 10, 10);
 }
}
}
