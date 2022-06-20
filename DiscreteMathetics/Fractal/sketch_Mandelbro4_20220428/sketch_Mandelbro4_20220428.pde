// setup
void setup(){
  size(400,400); //400x400画素の描画窓を作成
  colorMode(RGB); //RGB色空間にセット
  background(0); //背景は黒にセット
}

//draw
void draw(){
  float a = 0.08;//x-direction
  float b = 0.62;//y-direction
  float w = 0.00001;//xW
  
  int h = width / 2; 
  int n = 1024; //reptation
  int c; //color-set
  
  int i,j,l,cc;
  float x, y, zx, zy, u, v, mx;
  
  // acculate
  for(i=-h; i<=h; i++){
      u = (w * i / h) + a; // x-move
      for(j=-h; j<=h; j++){
        v = (w * j / h) + b; // y-move
        
        x = 0.0;
        y = 0.0;
        for(l=1; l<=n; l++){
          zx = x * x - y * y + u;
          zy = 2 * x * y + v;
          x = zx;
          y = zy;
          mx = x * x + y * y;
          if (mx >= 10.0){
            break; // mxが10以上になったら発散と判定
          }
        }
        
        //発散のスピードが速ければ カラー変数 cの値は小さくなる
        c = int (512 * l / n); 
        
        stroke(c * 2, c + 100 , c + 100 );
        point(200+i, 200-j);
      }
  }
}
