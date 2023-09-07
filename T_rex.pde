boolean gameo ;
boolean dang ;
boolean open,open2 ;
boolean light1 , light2;

float megasuperpuper_pula ;
float tir, ms ;
float bon ;

int money ;
int hp;
int boje_moi_a_ymru ;
int g ;
int play2;
int boss ;
int t, n ;
int st;
int ti_ne ;
int sm ;
int []bonu=new int[10000] ;
int POMA ;
int AHA ;
int CAHR ;
int BOGDAH ;
int kill ;
int by,by2,by3;

PImage tirex3, tirex2, stir ;
PImage victory ;
PImage pauk, sboss ;
PImage ccp ;
PImage back, menu ;
PImage shop2 ;
PImage bonus1 ;                                                        //переменые  для рисунков
PImage gameover ;
PImage play, start ;
PImage popiplaytime, tirex, vrag ;
PImage pula ;
PImage noll, betisat, sto ;
PImage ms2, ms3, sh, msiiina ;
PImage tiler;
PImage igra ;
PImage player456 ;
PImage player4562 ;
PImage player4563 ;
PImage OPEX ;
PImage fredy ;
PImage dorn ;
PImage vent ;
PImage ctol ;
PImage makaka ;
PImage dysa ;
PImage und ;
PImage sans ;


String q="50 tiler" ;
String w="50 tiler" ;
String e="50 tiler" ;
String r="20 tiler" ;
String u="20 tiler" ;
String y="20 tiler" ;

void setup() {                                //команда сетап  
  //orientation(LANDSCAPE) ;
  size( displayWidth, displayHeight);  
  KAPTUHKU() ;                                                                                  
  HA4ALO() ;
}

void draw() {
  switch(play2) {
  case 0 :
    background(200) ;   
    image(start, displayWidth/1.38, displayHeight/1.2,displayWidth/4, displayHeight/8 );
    image(shop2,displayWidth/270, displayHeight/3,displayWidth/7.50, displayHeight/5) ;
    image (igra,displayWidth/3, displayHeight/270,displayWidth/7.50, displayHeight/5 ) ;
    image (fredy,displayWidth/2, displayHeight/270,displayWidth/7.50, displayHeight/5) ;
    //image (und,displayWidth/1.5, displayHeight/270,displayWidth/7.50, displayHeight/5 ) ;
    break ;
    
  case 1 :
    case1() ;

    break ;
  case 2 :
    background(200) ;
    shop() ;


    break ;
  case 3 :
    case3();
    break ;
    case 4 :
   background(200) ;   
   fill(#030303);
  rect(displayWidth*5/10000,displayHeight/10000,displayWidth/5.49,displayHeight);
   rect(displayWidth,displayHeight/10000,-250,displayHeight);
    fill (#FF0000);
    rect (displayWidth/4.3,displayHeight/2,displayWidth/16.5,displayHeight/9.5);
    fill (#FF0000);
    rect (displayWidth/1.389,displayHeight/2,80,displayHeight/9.5); 
    image(dorn,0,by,250,60);
    image(dorn,displayWidth,by2,-250,60);
        fill (#E0E0E0);
    rect (displayWidth/4.3,displayHeight/3,displayWidth/16.5,displayHeight/9.5);
    rect (displayWidth/1.39,displayHeight/3,displayWidth/16.5,displayHeight/9.5); 
        fill(#A7A2A2);
         if(!light1 && open) {rect (displayWidth/4.3,displayHeight/3,displayWidth/16.5,displayHeight/9.5);fill(255) ;rect(displayWidth*5/10000,displayHeight/13,displayWidth/5.49,displayHeight);}
  // else {}
    if(!light2 && open2) {rect (displayWidth/1.39,displayHeight/3,displayWidth/16.5,displayHeight/9.5);  fill(255) ;rect (displayWidth,displayHeight/13,-250,displayHeight);}
  //  else {}
        
if (!light1 && open) {  rect (displayWidth/4.3,displayHeight/3,displayWidth/16.5,displayHeight/9.5);   ;    image (makaka,displayWidth*5/10000,displayHeight/13.5,250,displayHeight/1.2);  }
  
    
    if(!open) {by=displayHeight-60;   rect(0,0,250,displayHeight-60);}
    else {by=0;}
    if(!open2) {rect(displayWidth,0,-250,displayHeight-60); by2=displayHeight-60 ;  }
    else {by2=0;}


   image (ctol,displayHeight/2+100,displayWidth/3,500,280);
   image (vent,displayHeight/2+200,displayWidth/3-200, 200,200);
  // 
 break;
 case 5 :
 background(0) ;
  image (sans,displayWidth/2.6,displayHeight/6,displayWidth/5,displayHeight/2) ;
 fill(50) ;
 rect(displayWidth/16.5,displayHeight/2,displayWidth/1.14,displayHeight/2);
 //fill(255) ;
 
 
 
 
 
 break;
  }
  if (gameo) { 
    GameOver();
    
  }  
  
}

void mousePressed() {
  switch (play2) {
  case 0 :
    if (mouseX>displayWidth/1.38 && mouseY>displayHeight/1.2 && mouseX<displayWidth/1.38+displayWidth/4 && mouseY<displayHeight/1.2+displayHeight/8) {
      play2=1;
    }
    if (mouseX>displayWidth/270 &&  mouseY>displayHeight/3 && mouseX<displayWidth/270+displayWidth/7.50 && mouseY<displayHeight/3+displayHeight/5) {
      play2=2;
    }
    if (mouseX>displayWidth/3 && mouseY>displayHeight/270 && mouseX<displayWidth/3+displayWidth/7.50 && mouseY<displayHeight/270+displayHeight/5) {
      play2=3;
    }
  if (mouseX>displayWidth/2 && mouseY>displayHeight/270 && mouseX<displayWidth/2+displayWidth/7.50 && mouseY<displayHeight/270+displayHeight/5) {
      play2=4;
    }
    if ( mouseX>displayWidth/1.5 && mouseY>displayHeight/270 && mouseX<displayWidth/1.5+displayWidth/7.50  && mouseY<displayHeight/270+displayHeight/5 ) {
 play2=5 ;
    }
    break ;
  case 1 :

    if (gameo && mouseX>0  && mouseY>0  && mouseX<185  &&  mouseY<75){
      play2=0;
      gameo=false ;
      loop();
    }      
    if (mouseX>displayWidth/2) { 
      g=20;                                                        //машинка и терекс передвежение наклон                        
      n=sm ;                                                     
      t=st ;          
      ti_ne=8;
    } else {                                                           
      g=-20 ;                                                           //что сверху

      n=-sm ;  
      t=-st ;
      ti_ne=-8;
    } 
    if (gameo && mouseX<950 && mouseX>700 && mouseY<displayHeight-300+250 && mouseY>displayHeight-300) {
      st= 7;
      sm=3;
      gameo=false   ;
      loop() ;
    } 
    if (gameo && mouseX>0 && mouseY>0 && mouseX<200 && mouseY<80) {
      play2=0;
    }
    break ;

  case 2 :
    if (mouseX>displayWidth/2.3   &&  mouseY> displayHeight/1.4 && mouseX<displayWidth/2.3+displayWidth/9 && mouseY<690  && money>=displayHeight/1.4+displayHeight/5.1 ) {
      r="Выкуплено";
      money-=20;
      sh=ms2;
    }  
    if (mouseX>0 && mouseY>0 && mouseX<200 && mouseY<80) {
      play2=0;
    }
    if (mouseX>displayWidth/1.5 && mouseY>displayHeight/1.4 && mouseX<displayWidth/1.5+displayWidth/9 && mouseY<displayHeight/1.4+displayHeight/5.1 && money>=50 ) {
      q="Выкуплено"; 
      money-=50;
      sh=ms3;
    }
    if (mouseX>displayWidth/4.5   &&  mouseY>displayHeight/1.4 && mouseX<displayWidth/4.5+displayWidth/9 && mouseY<displayHeight/1.4+displayHeight/5.1  ) {
      sh=msiiina;
    } 
    if (mouseX>displayWidth/4.5 && mouseY>displayHeight/80 && mouseX<displayWidth/4.5+displayWidth/9 && mouseY<displayHeight/80+displayHeight/5 ) {
      stir=tirex;
    }
    if (mouseX>displayWidth/2.3 && mouseY> displayHeight/80 && mouseX<displayWidth/2.3+displayWidth/9 && mouseY< displayHeight/80+displayHeight/5 && money>=20 ){
                                                                             
      u="Выкуплено";
      money-=20;
      stir = tirex2;
    }
    if (mouseX>displayWidth/1.5 && mouseY>displayHeight/80 && mouseX<displayWidth/1.5+displayWidth/9 && mouseY<displayHeight/80+displayHeight/5 && mouseY>170 && money>=50) {
      w="Выкуплено";
      money-=50;
      stir = tirex3;
    }
    if (mouseX >displayWidth/4.5 && mouseY>displayHeight/2.6 && mouseX<displayWidth/4.5+displayWidth/9 && mouseY<displayHeight/2.6+displayHeight/5.1) {
      sboss = pauk;
    }
    if (mouseX > displayWidth/2.3 && mouseY>displayHeight/2.6 && mouseX<displayWidth/2.3+displayWidth/9 && mouseY<displayHeight/2.6+displayHeight/5.1 && money>=20) {

      y="Выкуплено";
      money-=20;
      sboss=ccp;
    }
    if (mouseX > displayWidth/1.5 && mouseY>displayHeight/2.6 && mouseX<displayWidth/1.5+displayWidth/9  && mouseY<displayHeight/2.6+displayHeight/5.1 && money>=50) {
      e="Выкуплено";
      money-=50;
      sboss=popiplaytime;
    }
    break ;
    case  3 :
    
    
    if (gameo && mouseX>0  && mouseY>0  && mouseX<185  &&  mouseY<75){
      play2=0;
      gameo=false ;
      loop();
    }      
        if (gameo && mouseX<950 && mouseX>700 && mouseY<displayHeight-300+250 && mouseY>displayHeight-300) {
      st= 7;
      sm=3;
      gameo=false   ;
      loop() ;
    } 
    //    rect (320,displayHeight/2,80,80);
    //rect (displayWidth-380,displayHeight/2,80,80); 

    // rect (displayWidth-380,displayHeight/3,80,80);)
    break;
    case  4 :
   if(mouseX>320 && mouseY>displayHeight/2  && mouseX<400 && mouseY<displayHeight/2+80 ) {open=!open ;
  }
     if(mouseX>displayWidth-380 && mouseY>displayHeight/2  && mouseX<displayWidth-300 && mouseY<displayHeight/2+80 ) {open2=!open2 ;
     }
     //    rect (320,displayHeight/3,80,80);
     if(mouseX>320 && mouseY>displayHeight/3 && mouseX<400 && mouseY<displayHeight/3+80) {light1=!light1;}
      if(mouseX>displayWidth-380 && mouseY>displayHeight/3 && mouseX<displayWidth-300 && mouseY<displayHeight/3+80) {light2=!light2;}
  break;
  }
}  


void shop() {
  image (msiiina, displayWidth/4.5, displayHeight/1.4,displayWidth/9, displayHeight/5.1) ;
  image (ms2,displayWidth/2.3, displayHeight/1.4,displayWidth/9, displayHeight/5.1) ;
  image (ms3, displayWidth/1.5, displayHeight/1.4,displayWidth/9, displayHeight/5.1) ;
  image (back, 0, 0, 200, 80) ;
  image (ccp, displayWidth/2.3, displayHeight/2.6,displayWidth/9, displayHeight/5.1) ;
  image (pauk, displayWidth/4.5, displayHeight/2.6,displayWidth/9, displayHeight/5.1); 
  image (popiplaytime, displayWidth/1.5, displayHeight/2.6,displayWidth/9, displayHeight/5.1) ;
  image (tirex, displayWidth/4.5, displayHeight/80,displayWidth/9, displayHeight/5);
  image (tirex2, displayWidth/2.3, displayHeight/80,displayWidth/9, displayHeight/5);  
  image (tirex3, displayWidth/1.5, displayHeight/80,displayWidth/9, displayHeight/5);
  image (tiler, displayWidth -150, 0, 140, 120) ;


  textSize(32) ;
  text( money+" tiler", displayWidth -130, 146) ;
  text("выкуплено", 300, 720);
  text("выкуплено", 300, 480);
  text("выкуплено", 300, 200);
  text(q, 900, 720);
  text(e, 900, 480);
  text(w, 900, 200);
  text(r, 600, 720);
  text(u, 600, 480);
  text(y, 600, 200);
}
void GameOver() {
  image (gameover, 300, displayHeight-600);
  image (play, 700, displayHeight-300, 250, 250);
  ms=displayWidth-400;
  money +=boje_moi_a_ymru ;
  boje_moi_a_ymru = 0 ;
  tir=0;
  vrag = stir  ;
  boss=0 ;
  image (back, 0, 0, 200, 80) ;
  noLoop();
}
void KAPTUHKU() {
  igra = loadImage("igra.png") ;
  shop2= loadImage("shop.png") ;
  pula = loadImage ("potron.png") ;
  sto = loadImage ("100.png") ;
  betisat =loadImage ("50.png") ;
  noll = loadImage ("0.png") ;
  tirex = loadImage ("tirex.jpg" ) ;                                  //загруски рисунков
  msiiina = loadImage ("msiiina.png") ;
  gameover = loadImage ("gameover.jpg") ;
  play = loadImage ("play.ru.png" ) ;
  popiplaytime =loadImage ("popiplaytime.jpg") ;  
  bonus1 =loadImage("bonus.png") ;
  start = loadImage ("start.png") ;
  menu =loadImage ("menu.png") ;
  ms2 = loadImage("top_ms2.png") ;
  ms3 = loadImage("tesla.jpg") ;
  back = loadImage("back.png") ;
  tirex2 = loadImage ("tirex2.png") ;
  tirex3 = loadImage("tirex3.png") ;
  ccp = loadImage ("cccp.jpg") ;
  pauk = loadImage ("aa_pauk.png") ;
  tiler = loadImage ("tiler.png") ;
  player456 = loadImage ("player456.png") ;
  player4562 = loadImage ("player4562.png") ;
  player4563 =loadImage ("player4563.png") ; 
  OPEX=loadImage ("OPEX.png");
  victory=loadImage("victori.jpg");
  fredy = loadImage("fredy.png") ;
  dorn = loadImage("open.png");
  vent = loadImage ("vent.png") ;
  ctol = loadImage ("CTOL.png") ;
  makaka = loadImage ("makaka.png") ;
  dysa = loadImage ("dysa.png") ;
  //und = loadImage ("und.png") ;

}
void HA4ALO () {
  bon =displayWidth/2 ;
  for (int i =0; i<10000; i+=1  ) {
    bonu[i] = -1500*i;
  }
  stir =tirex ;
  vrag=stir ;
  ti_ne=8;
  n =3   ;
  tir =displayWidth/3 ;
  t=7 ;
  g= 8 ;
  gameo=false ;
  ms=2*displayWidth/3 ;
  boss=0 ;    //TODO
  megasuperpuper_pula=ms;
  hp=1;
  boje_moi_a_ymru=0;
  sm=3;
  st=7;
  sh = msiiina ;
  sboss =popiplaytime ;
  kill = 0;
  money=1234567890;
  POMA= displayWidth;
  AHA=displayWidth-300;
  open = true ;
  by=5;
  open2=true;
  by2=5 ;
  by3=5 ;
  light1 = true;
    light2 = true;

}
void case1() {
  background(0, 0, 255)    ;                                         // для фона 
  fill(0, 254, 0) ;
  translate(displayWidth/2, displayHeight/2) ;
  rotate(radians(g)) ;
  translate(-displayWidth/2, -displayHeight/2);
  rect(0, displayHeight -170, displayWidth, 600) ;
  noStroke() ;
  fill(255) ;  
  ellipse(1000, 100, 80, 80) ;
  ellipse(1040, 100, 80, 80) ;                                                                                            
  ellipse(1080, 100, 80, 80) ;

  for (int i =0; i<10000; i++) {

    image(bonus1, bon, bonu[i]) ;

    bonu[i]+=7;

    if (displayHeight-335<bonu[i]+130 && displayHeight-200>bonu[i] && bon+130>ms &&bon<ms+230) {
      n=0;
    }
  }

  image(vrag, tir, displayHeight-520) ;                             //где нахлдится тирекс и машинка
  image(sh, ms, displayHeight-335) ;

  if (gameo) { 
      image (back, 0, 0, 200, 80) ;
    GameOver();
  }

  ms+=n ;                                                         //скорасть
  tir+=t  ;

  textSize(32) ;
  text(boje_moi_a_ymru, displayWidth/2, 39) ;

  if (boss>=5) {
    vrag=sboss;
    image(pula, megasuperpuper_pula, displayHeight/2);
    megasuperpuper_pula+=ti_ne ;
    if (tir+270>megasuperpuper_pula && tir<megasuperpuper_pula) {
      hp++ ;
      megasuperpuper_pula=ms ;
    }
    switch(hp) {
    case 1: 
      image(sto, 150, 200);
      break ;
    case 2:
      image(betisat, 150, 200) ;
      break ;
    case 3:
      image(noll, 200, 200);
      break ;
    default :
      boss=0 ;
      hp=1 ;
      vrag=stir ;
    }
  }

  if (ms<-500) {
    ms=displayWidth/2;
    gameo=true;
  }
  if (ms>displayWidth+100) {
    ms=displayWidth/2;
    gameo=true;
  }   

  if (tir<-500) {
    tir=random(ms+150, displayWidth);
    boss+=1;
    boje_moi_a_ymru+=1;
  }
  if (tir>displayWidth+100) {
    tir=random(ms-300);
    boss+=1;
    boje_moi_a_ymru+=1 ;
  }  

  if (tir+250>ms && tir<ms+150) {
    gameo=true;
  }
                                     
  translate(displayWidth/2, displayHeight/2) ;
  rotate(radians(-g)) ;
  translate(-displayWidth/2, -displayHeight/2);                                //отмена наклона на наклона кнопки 
}
void case3() {
  background(0, 0, 255) ;
  fill (#FCF503);
  rect(0, displayHeight -170, displayWidth, 600) ;
  image (OPEX, POMA, 295);
  image (OPEX, AHA, 295);
  fill(#FFF81A); 
  //._. .-. :>  :< ,_, |: :[ :] :} %_% $o$                               
  if (mousePressed) {
    POMA-= 16;
    AHA-=20 ;
    if (POMA<-130) {
      POMA=displayWidth+290;
    }
    if (AHA<-130 ) {
      AHA=displayWidth+290;
    }
    if (kill %8>3) {
      image (player4562, 100, 420);
    } else { 
      image (player4563, 100, 420);
    }
  } else {
    image(player456, 100, 420);
  }
  fill(51, 252, 48);
  rect(displayWidth-200, 0, 250, 150);
  if (kill %150>100) {
    fill(51, 252, 48);
    rect(displayWidth-200, 0, 250, 150);
  } else if (kill %150<50) {
    fill (#FEFF00);
    rect(displayWidth-200, 0, 250, 150);
  } else {
    fill(#FC0307) ;
    rect(displayWidth-200, 0, 250, 150);

    if (mousePressed) {
      gameo = true;
      kill=0;
    }
  }
  kill++;
  if(kill>=9000) {image(victory,0,0,displayWidth,displayHeight);}


}         
 void case4() {
   
   
   
   
 };
