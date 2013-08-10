// Setup logic for starting a new level, common to all levels
// Called just before Level entered, common set-up code
// Level, Question and SubQuestion set in globals before calling script

if global.Debug
    {
    show_debug_message("Entered scSetUpLevel");
    show_debug_message("global.CurrentLevel="+string(global.CurrentLevel));
    show_debug_message("global.CurrentQuestion="+string(global.CurrentQuestion));
    show_debug_message("CurrentSubQuestion="+string(CurrentSubQuestion));
    show_debug_message("scGetIndex="+string(scGetIndex()));
    show_debug_message("global.QuestionImage[scGetIndex()]"+string(global.QuestionImage[scGetIndex()]));
    }
// Starting on a Level page; if so don't show lock
//image_index=1;
//image_speed=0;




// Set the starting Question:SubQuestion
// Change this for testing !!



// Make sure correct image index for question is displayed
with (inst_E9DCD978) // instance ID of obLevelQuestions
    {
    image_index=global.QuestionImage[scGetIndex()];
    image_speed=0;
    }




// Make sure correct image index for dropzone is displayed
with (inst_12BC6655) // instance ID of obLevelQuestions
    {
    image_index=global.DropZoneImage[scGetIndex()];
    image_speed=0;
    }
   

// Set the timer
// timers - TimeLeft;           when 0 reached, answer is checked, (seconds);
//          ThinkingTimeDelay;  before a button is moved on a question, thinking time for student (seconds)
//          CheckAnswerDelay;   time to wait after last button has been moved (answer submitted) (seconds)
global.TimeLeft=global.ThinkingTimeDelay;


// Start this level with all Buttons Stationary
global.ButtonInMotion=0;

// Reset given answers ready for student
global.Numerator="000";
global.Denominator="000";
global.WholeNumber="000";

// Layout the buttons, assigning legend value - do 9 layers, max no. digits possible
i=0;
for (i = 0; i < 9; i += 1)
   {
    (instance_create(1*(1+(room_width/11)),640,obButton0_NotPressed)).value=0;
    (instance_create(2*(1+(room_width/11)),640,obButton1_NotPressed)).value=1;
    (instance_create(3*(1+(room_width/11)),640,obButton2_NotPressed)).value=2;
    (instance_create(4*(1+(room_width/11)),640,obButton3_NotPressed)).value=3;
    (instance_create(5*(1+(room_width/11)),640,obButton4_NotPressed)).value=4;
    (instance_create(6*(1+(room_width/11)),640,obButton5_NotPressed)).value=5;
    (instance_create(7*(1+(room_width/11)),640,obButton6_NotPressed)).value=6;
    (instance_create(8*(1+(room_width/11)),640,obButton7_NotPressed)).value=7;
    (instance_create(9*(1+(room_width/11)),640,obButton8_NotPressed)).value=8;
    (instance_create(10*(1+(room_width/11)),640,obButton9_NotPressed)).value=9;
   }
   
// Reset no. digits expected to be given
globalvar DigitCount;
global.DigitCount=0;

// go to room (this room type can handle all questions, except ones with a whiteboard
room_goto(rmLevel_1_Fraction_Basics_Room)

