// 繝｡繧､縺ｮ繝｢繝�Ν繧剃ｽ懈�

//繧ｳ繝ｳ繝医Ο繝ｼ繝ｫ繝代Λ繝｡繝ｼ繧ｿa縺ｮ螟牙虚遽�峇繧定ｨｭ螳�
float a_min = 3.85; //a縺ｮ譛蟆丞､繧�0.0
float a_max = 3.87; //a縺ｮ譛螟ｧ蛟､繧�4.0

void mousePressed() {
  saveFrame("./result.png");
}

void setup(){
  size(600,400); //600x400逕ｻ邏�縺ｮ謠冗判遯薙ｒ菴懈�
  colorMode(HSB); //HSB濶ｲ遨ｺ髢薙↓繧ｻ繝�ヨ
  background(0); //閭梧勹縺ｯ鮟偵↓繧ｻ繝�ヨ
  
  stroke(255);
  
  //繧ｰ繝ｩ繝輔�豌ｴ蟷ｳ縲∝桙逶ｴ譁ｹ蜷代�霆ｸ繧呈緒逕ｻ
  //y霆ｸ
  line(50,50,50,350);
  line(50,50,55,55);
  line(50,50,45,55);
  //x霆ｸ繧呈緒逕ｻ
  line(50,350,550,350);
  line(550,350,545,345);
  line(550,350,545,355);
  
  
  float a;
  float x;
 
  //繧ｳ繝ｳ繝医Ο繝ｼ繝ｫ繝代Λ繝｡繝ｼ繧ｿ縺ｮ譛螟ｧ蛟､縺ｨ譛蟆丞､縺ｮ髢薙ｒ
  //400縺ｫ蛻�牡縲�400縺ｮ蛻�牡繧偵∵緒逕ｻ縺吶ｋ縲�
  for(int i=0; i < 400; i++){
    
    //迴ｾ蝨ｨ縺ｮ繧ｳ繝ｳ繝医Ο繝ｼ繝ｫ繝代Λ繝｡繝ｼ繧ｿ縺ｮ蛟､繧定ｨ育ｮ�
    a = a_min + i * (a_max - a_min) / 400.0;
 
   //縺薙％縺ｧ繧ｳ繝ｳ繝医Ο繝ｼ繝ｫ繝代Λ繝｡繝ｼ繧ｿ縺ｮ1縺､縺ｮ蛟､縺ｫ蟇ｾ縺�
   //隍�焚蝗槭�繝励Ο繝�ヨ繧定｡後≧縲ゅョ繝輔か繝ｫ繝医〒100蝗槭�
   
    for(int plot_number=0;plot_number<100;plot_number++){
      
      //x縺ｮ蛻晄悄蛟､繧偵Λ繝ｳ繝繝�縺ｫ險ｭ螳�
      x = random(1.0);
      
      //繝ｩ繝ｳ繝繝�縺ｫ險ｭ螳壹＠縺溷�譛溷､縺九ｉ100蝗槫渚蠕ｩ險育ｮ�
      for(int k=0;k<100;k++){
        x = a * x * (1.0 - x);
      }  
      
      //濶ｲ繧帝←蠖薙↓螟画峩縺励※繝励Ο繝�ヨ
      fill(i % 255,plot_number % 255,255);
      noStroke();
      ellipse(50 + i, 350 - (x * 300),2,2);
    } 
  }
  
  saveFrame("result.png"); 
  
}

