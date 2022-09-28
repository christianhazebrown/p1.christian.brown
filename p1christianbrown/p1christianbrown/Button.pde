class Button{
  PFont font;
  private color ButtonColor;
  color textColor;
  private String Text;
  PVector Pos = new PVector(0,0);
  float Width = 0;
  float Height = 0;
  boolean Pressed = false;
  boolean Clicked = false;
  boolean rectOver = false;
  boolean box = false;
  
  //constructor
  Button(int x, int y, int W, int H, String T, color BC, color tc, boolean b){
     Pos.x = x;
     Pos.y = y;
     ButtonColor = BC;
     Text = T;
     Width = W;
     Height = H;
     textColor = tc;
     box = b;
  }
  //checks for button being clicked
  void update(){
    if(mousePressed == true && mouseButton == LEFT && Pressed == false){
      Pressed = true;
      if(mouseX >= Pos.x && mouseX <= Pos.x+Width && mouseY >= Pos.y && mouseY <= Pos.y + Height){
        Clicked = true;
      }
    } else{
        Clicked = false;
        Pressed = false;
      } 
      
  }
  //renders the button
  void render(){
    fill(ButtonColor);
    if (box == true){
      rect(Pos.x, Pos.y, Width, Height);
    }
    fill(textColor);
    font = createFont("BebasNeue-Regular.ttf", 30);
    textAlign(CENTER, CENTER);
    textSize(20);
    textFont(font);

    text(Text, Pos.x+(Width/2), Pos.y+(Height/2));
  }

  
  //returns the value of class variable CLICKED
  boolean isClicked(){
    return Clicked;
  }
  

}
