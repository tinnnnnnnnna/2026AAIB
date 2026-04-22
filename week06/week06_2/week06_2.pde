//week06-2好玩的程式設計
//Ctrl+n開新視窗，貼上剛剛的week06-1
int[][]b=new int[10][16];//Java的2D陣列
void setup() {
  size(800, 500);//視窗大小800*500
}
void draw() {
  background(225);//背景白色
  for (int i=0; i<10; i++) {//左手的i的for(迴圈)對應Y座標
    for (int j=0; j<16; j++) {//右手j的for(迴圈)對應X座標
      if (b[i][j]>0){
        fill(#FFCECE,b[i][j]*4);//如果陣列有值，就放淡粉色
        b[i][j]--;//慢慢變小
      }else fill(255);//否則就放白色
      rect(j*50, i*50, 50, 50);//小格子(右手j對應X座標,左手i對應y座標)
    }
  }
}
void mouseDragged() {//右手j對應X座標,左手i對應y座標
  int i=mouseY/50, j=mouseX/50;
  b[i][j]=60;//設成60，倒數計時的粉色
}
