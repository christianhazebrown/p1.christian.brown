

color rectColor, helpColor, textColor;
Button firstFloor, secondFloor,thirdFloor,fourthFloor, fithFloor, 
openDoor, closeDoor,bell,help;
PImage bg,blackbg, weather, news,ad;
int yPos,month, day, hour, min;
String time;

void setup() {
  size(680, 800);
  rectColor = #111111;
  helpColor = #9B0000;
  textColor = #FFFFFF;
  bg = loadImage("bgimage.jpg");
  blackbg = loadImage("Black.jpg");
  weather = loadImage("weather.jpg");
  news = loadImage("news.png");
  ad = loadImage("ad.jpg");
  background(0);
  yPos = 130;
  firstFloor = new Button(30,yPos+520,150,100, "1st floor", rectColor,textColor,false);
  secondFloor = new Button(30,yPos+390,150,100, "2nd floor", rectColor,textColor,false);
  thirdFloor = new Button(30,yPos+260,150,100, "3rd floor", rectColor,textColor,false);
  fourthFloor = new Button(30,yPos+130,150,100, "4th floor", rectColor,textColor,false);
  fithFloor = new Button(30,yPos,150,100, "5th floor", rectColor,textColor,false);
  
  openDoor =  new Button(330,yPos+520,150,100, "Open Doors", rectColor,textColor,false);
  closeDoor =  new Button(500,yPos+520,150,100, "Close Doors", rectColor,textColor,false);
  bell =  new Button(210,yPos+520,100,100, "bell", rectColor,textColor,false);
  help = new Button(0,0, 700,100, "Call for help", helpColor,textColor,true);
  
  month = month();
  day = day();
  hour = hour();
  min = minute();;
}

void draw(){
  if(firstFloor.isClicked()){
    firstFloor = new Button(30,yPos+520,150,100, "1st floor", rectColor, #FF363D,true);
  }
  if(secondFloor.isClicked()){
    secondFloor = new Button(30,yPos+390,150,100, "2nd floor", rectColor, #FF363D,true);
  }
  if(thirdFloor.isClicked()){
    thirdFloor = new Button(30,yPos+260,150,100, "3rd floor", rectColor, #FF363D,true);
  }
  if(fourthFloor.isClicked()){
    fourthFloor = new Button(30,yPos+130,150,100, "4th floor", rectColor, #FF363D,true);
  }
  if(fithFloor.isClicked()){
    fithFloor = new Button(30,yPos,150,100, "5th floor", rectColor, #FF363D,true);
  }
  if(openDoor.isClicked()){
    openDoor =  new Button(330,yPos+520,150,100, "Open Doors", rectColor,#FF363D,true);
  }
  if(closeDoor.isClicked()){
    closeDoor =  new Button(500,yPos+520,150,100, "Close Doors", rectColor,#FF363D,true);
  }
  if(bell.isClicked()){
    bell =  new Button(210,yPos+520,100,100, "bell", rectColor,#FF363D,true);
  }
  if(help.isClicked()){
    help = new Button(0,0, 700,100, "Calling for help...", #F1F531,0,true);
  }
  
  //UPDATE BUTTONS
  firstFloor.update();
  secondFloor.update();
  thirdFloor.update();
  fourthFloor.update();
  fithFloor.update();
  help.update();

  openDoor.update();
  closeDoor.update();
  bell.update();
  //RENDER BUTTONS
  firstFloor.render();
  secondFloor.render();
  thirdFloor.render();
  fourthFloor.render();
  fithFloor.render();
  help.render();
  bell.render();
  openDoor.render();
  closeDoor.render();

  //weather days
  image(weather, 290,150, 310,150);
  //news
  image(news, 230,315, 450,200);
  //ad
  image(ad, 230,530,445,100);
  String date =  month + "/" + day;
  if(hour > 12){
    time = (hour-12) + ":" + min +"am";
  }
  else{
    time = (hour-12) + ":" + min;
  }
  fill(#FFFFFF);
  //date
  text(date,255,120);
  //time
  text(time,640,120);
  //day of the week
  text("wednesday", 435, 120);
}
