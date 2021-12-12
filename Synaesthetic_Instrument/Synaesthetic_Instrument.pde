// beat.wav - https://freesound.org/people/YellowTree/sounds/422679/
// piano notes - https://freesound.org/people/pinkyfinger/packs/4409/
//Importing Sounds Library and initializing new SoundFile variables
import processing.sound.*;
SoundFile beat, synth, c,d,e,f,g;


// initiialize all global variables
boolean play_beat=false;
boolean playing_red=false;
boolean playing_blue=false;
boolean playing_green=false;
boolean playing_yellow=false;
boolean playing_violet=false;

float beat_rate=1;
Beat newbeat;
Note red, blue, green, yellow, violet;

void setup() {
  size(1500, 1500, P3D);  
  textSize(30);
  newbeat = new Beat();
  
  
  //Initializing Red, Blue, Green, Yellow and Violet Notes
  // Red Note
  red = new Note();
  red.x=0;
  red.y=0;
  red.colour=color(255, 0, 0);
  
  // Blue Note
  blue = new Note();
  blue.x=300;
  blue.y=0;
  blue.colour=color(0,0,255);
  
  // Green Note
  green = new Note();
  green.x=600;
  green.y=0;
  green.colour=color(0,255,0);
  
  // Yellow Note
  yellow = new Note();
  yellow.x=900;
  yellow.y=0;
  yellow.colour=color(#FFD603);
  
  // Violet Note
  violet = new Note();
  violet.x=1200;
  violet.y=0;
  violet.colour=color(#8768F0);
 
  
  // Initialize audio files
  beat = new SoundFile(this, "beat.wav");
  c = new SoundFile(this, "c.wav");
  d = new SoundFile(this, "d.wav");
  e = new SoundFile(this, "e.wav");
  f = new SoundFile(this, "f.wav");
  g = new SoundFile(this, "g.wav");

  ellipseMode(CENTER);
  rectMode(CORNER);
  textAlign(CENTER, CENTER);
 
}

void draw() {
  background(255);
  
  // see helper function below draw function
  display_notes();
  
  // text instructions 
  fill(0);
  text("press the space bar to toggle a beat on and off", width/2, height/2 - 50);
  text("Press the up and down arrows to control the rate of the beat.", width/2, height/2);
  text("Press the a, s, d, f and g keys to play notes!", width/2, height/2 + 50);
  
  
  if (play_beat){
    // have to display the newbeat here whenever play_beat is toggled to true
    newbeat.display();   
  }
  
}

void display_notes(){
  if (playing_red){ 
    red.display();
  } else{  
    red.h=0;  
  }
  
  if (playing_blue){
    blue.display();
  } else{
    blue.h=0;
  }
  
  if (playing_green){
    green.display();
  } else{
    green.h=0;
  }
  
  if (playing_yellow){
    yellow.display();
  } else{
    yellow.h=0;
  }
  
  if (playing_violet){
    violet.display();
  } else{
    violet.h=0;
  }
}
