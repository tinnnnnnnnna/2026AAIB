//week11-1好玩的程式設計
//file-preference 字型放大 
void setup(){
  size(500,500); //視窗大小
}
float a=0; //角度a
void draw(){
  background(#FFFFF2);//淡黃背景
  rectMode(CENTER);//設定畫方形的模式，要置中對其(比較好看)
    for(int i=0;i<6;i++){//要畫出六個正方形
    //國中教過三角函數cos(a)sin (a) 不知道用處? 就是x座標、y座標
    float x=250+200*cos(a+PI/3*i),y=250+100*sin(a+PI/3*i);
    rect(x,y,80,100);
  }
  a+=0.03;
}
