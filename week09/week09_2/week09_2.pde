//week09-2 好玩的程式設計(打地鼠冒出來)
//修改自 week09-1 好玩的程式設計(打地鼠) ctrl+n新視窗
void setup(){//設定一次
  size(300,300);//視窗大小300*300
}
int[][]a={{0,0,0},{0,0,0},{0,0,0}};//java陣列
void draw(){//每秒畫60次
  background(#FFFFF2);//背景淡黃色
  if(frameCount%60==0){//每過60frame(1s)生一隻地鼠
    int i=int(random(3)),j=int(random(3));
    a[i][j]=60;//亂數決定I跟J的值再把a[i][j]生60
  }
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      int x = 50 + j*100, y = 50 + i*100;
      if (a[i][j]>0){
        fill(#C61616,a[i][j]*4);//地鼠色 半透明
        a[i][j]--;//數值會變小 慢慢就透明不見了
      }else fill(#FFFFF2);   
      ellipse(x,y,90,90);//地鼠的洞
    }
  }
}
