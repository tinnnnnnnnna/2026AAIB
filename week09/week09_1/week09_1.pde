//week09-1 好玩的程式設計(打地鼠)
//fill-preferencr 字型設大
void setup(){//設定一次
  size(300,300);//視窗大小300*300
}
void draw(){//每秒畫60次
  background(#FFFFF2);//背景淡黃色
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      int x = 50 + j*100, y = 50 + i*100;
      ellipse(x,y,90,90);
    }
  }
}
