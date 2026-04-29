//week10-1好玩的程式設計-打地鼠2
//fill-prefence/字型設大一點，接續上周week09-2 好玩的程式設計(打地鼠冒出來)
//修改自 week09-1 好玩的程式設計(打地鼠) ctrl+n新視窗
void setup(){//設定一次
  size(300,300);//視窗大小300*300
}
int[][]a={{0,0,0},{0,0,0},{0,0,0}};//java陣列
void mousePressed(){//week10-1新加的程式：mouse按下去
  int i=mouseY/100,j=mouseX/100;//左手i對應Y 右手j對應X
  if(a[i][j]>0){//打到地鼠了！
    a[i][j]=-60;//由正變負，負的代表死掉的地鼠
  }
}
void draw(){//每秒畫60次
  background(#FFFFF2);//背景淡黃色
  if(frameCount%60==0){//每過60frame(1s)生一隻地鼠
    int i=int(random(3)),j=int(random(3));
    a[i][j]=60;//亂數決定I跟J的值再把a[i][j]生60
  }
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      int x = 50 + j*100, y = 50 + i*100;
      if (a[i][j]<0){//負的代表死掉的鼠
        fill(0);
        a[i][j]++;//-60慢慢加大
      }
      if (a[i][j]>0){
        fill(#C61616,a[i][j]*4);//地鼠色 半透明
        a[i][j]--;//數值會變小 慢慢就透明不見了
      }else fill(#FFFFF2);   
      ellipse(x,y,90,90);//地鼠的洞
    }
  }
}
