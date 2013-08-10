//Called when answer has been given (collision on drop zone/multi-choice selection made)
// If correct, jump to next Question
// If incorrect, do next SubQuestion; if on last SubQuestion, loop around to first SubQuestion
// in that Question group



// Global variables
//  WholeNumber (AAA) given answer; format AAABBBCCC - see https://docs.google.com/a/smtahunter.com/spreadsheet/ccc?key=0Agt7KF2_Nd0OdEN2bU9PN1l5X1JvdTM0QUlBeFZqeVE#gid=0
//  Numerator (BBB) given answer
//  Denominator (CCC) given answer
//  Level
//  Question
//  SubQuestion

// Inputs:
//          0: instance of obLevelQuestion, so can advance sprite image
//          
//
// Outputs: 
// TRUE: correct 
// FALSE: incorrect 
//
// Processing:
//          Advances sprint image, gets digits from bounding box


if global.Debug show_debug_message("-- entering scCheckAnswer");
if global.PopupDebug show_message("-- entering scCheckAnswer");

if global.Debug
    {
    show_debug_message("Initial value of WND "+string(global.WholeNumber)+string(global.Numerator)+string(global.Denominator));
    show_debug_message("Expected answer is: "+string(global.Answer[scGetIndex()]));
    }

// Get the number from the buttons droppped
// Bounding box  determined by Answers array, for DropZoneImage index into BoundingBox[] array
NumbersFound=scExtractNumber(); // Returns found WND in CSV string (only single value can be returned)
if global.Debug show_debug_message("NumbersFound="+string(NumbersFound));
// Need to scStringExtract the WND
global.WholeNumber=scStringExtract(NumbersFound,",",0);
global.Numerator=scStringExtract(NumbersFound,",",1);
global.Denominator=scStringExtract(NumbersFound,",",2);



if global.Debug
    {
    show_debug_message("Dropped value of WND "+string(global.WholeNumber)+string(global.Numerator)+string(global.Denominator))
    show_debug_message("Expected value of WND "+string(global.Answer[scGetIndex()]));
    show_debug_message("scGetIndex() returns "+string(scGetIndex()));
    }

if string(global.Answer[scGetIndex()])==(string(global.WholeNumber)+string(global.Numerator)+string(global.Denominator))
    { // got it correct
    if global.Debug show_debug_message("***Got it correct!***");
    // Show 'Correct' pop-up

    var inst;
    inst=instance_create(0,0,obCorrect);   
    with inst
        {
        speed=0;
        image_xscale=2; // Can't fill all images in Sprite-so half-sized, and double display
        image_yscale=2;
        // Levels may have 5,10 or 30 questions; in sprite spCorrect, 0-4 for 5Q Level
        // 5-14 for 10Q Level, 15-45; global.QperLevel is lookup for how many Q per level
        if global.CurrentLevel!=11 // not on Skill Tester
            {
            image_index=(global.QperLevel[global.CurrentLevel] + global.CurrentQuestion-6); // index counts from zero, Questions from 1
            depth=-20; 
            }
        else // on Skill Tester, use different range of images in Sprite, start at 15, for 30 images
            {
            global.SkillTesterCorrect+=1;
            image_index=15+global.SkillTesterCorrect;
            depth=-20;
            }    
        }

    // object will pause for 2.5 seconds before going on
    
           
    // Jump to next Question; roll-around after last Q (could be 5 or 10)
    show_debug_message("line 86 global.CurrentQuestion,global.QperLevel[global.CurrentLevel]"+string(global.CurrentQuestion)+","+string(global.QperLevel[global.CurrentLevel]));
    if global.CurrentQuestion==global.QperLevel[global.CurrentLevel] // if at last Question, advance Level
        {
        // Show Fireworks
        var inst;
 
        inst=instance_create(0,0,obNextLevel);
        with inst 
            {
            speed=0;
            image_index=0;
            depth=-20;
            } 
            
        //  For website preview, only L1,9 unlocked, can't unlock any others
        // room_goto(rmHome);
        // exit; // Don't allow Level advance
        
        global.LevelComplete[global.CurrentLevel]=1; // Bug with wrong level showing tick, see https://trello.com/c/KiBaOcGr
        // if (global.CurrentLevel*3)>global.FurthestLevel  global.FurthestLevel=(global.CurrentLevel*3) // Highwater mark used for Skill Test last Question, grouped in 3
        // Advance progress
        global.CurrentLevel+=1;
        global.CurrentQuestion=1;
        global.CurrentSubQuestion=1;

        if global.Debug
           {
            show_debug_message("global.LevelComplete[global.CurrentLevel]="+string(global.LevelComplete[global.CurrentLevel]));
            show_debug_message("global.CurrentLevel="+string(global.CurrentLevel));
            }
        
        
        // write progress to ini file
        ini_open("savedata.ini");
        ini_write_real('Locked','Level1',global.LevelComplete[1]); 
        ini_write_real('Locked','Level2',global.LevelComplete[2]); 
        ini_write_real('Locked','Level3',global.LevelComplete[3]); 
        ini_write_real('Locked','Level4',global.LevelComplete[4]); 
        ini_write_real('Locked','Level5',global.LevelComplete[5]); 
        ini_write_real('Locked','Level6',global.LevelComplete[6]); 
        ini_write_real('Locked','Level7',global.LevelComplete[7]); 
        ini_write_real('Locked','Level8',global.LevelComplete[8]); 
        ini_write_real('Locked','Level9',global.LevelComplete[9]); 
        ini_write_real('Locked','Level10',global.LevelComplete[10]); 
        ini_write_real('Locked','Level11',global.LevelComplete[11]); 
        
        ini_close(); // Save back values

        }
    else // not at last question in level
        {
        if global.Debug==1  // Make each Q come up to check them, for checking each one
            global.CurrentSubQuestion+=1; 
        else // Advance as normal
            {      
            global.CurrentQuestion+=1 // not at last Question        
            global.CurrentSubQuestion=1; // Start with first SubQuestion
            }
         }
    }
else // got it wrong, try next sub-question - roll-around after 5th
{   
    // Display pop-up and make sound
    var inst;

    inst=instance_create(0,0,obTryAgain);    
    inst.speed=0;
    inst.depth=-20;
   
    // object will pause for 2.5 seconds before going on
    if global.Debug show_debug_message("***Got it wrong***");
    
    
    if global.CurrentSubQuestion==5 // at last sub-question?
    {
        global.CurrentSubQuestion=1 // got to last SubQuestion, roll-around
    }
    else 
    {
        if global.CurrentLevel!=11 // if not on Skill Tester, advance SubQ (no SubQ on Skill Tester)
            global.CurrentSubQuestion+=1 // next sub question
        else // on Skill Tester Level, go to next Q regardless
            {
            global.CurrentQuestion+=1 // next Question, no SubQ for Skill Tester
            if global.CurrentQuestion==FurthestLevel global.CurrentLevel+=1; // Got to end of Skill Tester; only go as far as user has progressed with ticks
            }
    }
}

// see if game over - before trying to draw level 12 (non-existant)
show_debug_message("(at game end check) global.CurrentLevel="+string(global.CurrentLevel))
show_debug_message("(at game end check) global.SkillTesterCorrect="+string(global.SkillTesterCorrect))
if (global.CurrentLevel==12 && global.SkillTesterCorrect==30)
    {
    room_goto(rmFinale)// game over, Skill Master achieved
    exit;
    }
if (global.CurrentLevel==12 && global.SkillTesterCorrect<30)
    {
    room_goto(rmKeepTrying); // Not all correct - Need to Keep Trying to achieve Skill Mastery
    exit;
    }


    
// Get ready for next question if game not over
// draw the next question
//show_debug_message("scGetIndex of question drawn="+string(scGetIndex())) //!!
//show_debug_message("image_index=global.QuestionImage[scGetIndex()="+string(global.QuestionImage[scGetIndex()])) //!!
 with (inst_BA98E6C8) // instance ID of obLevelQuestions
    image_index=global.QuestionImage[scGetIndex()]; // set the sub-image - code above has modified the Question, SubQuestion and Level

// Draw the next dropzone
with (inst_12BC6655) // instance ID of drop zone
    {
    image_index=global.DropZoneImage[scGetIndex()];
    image_speed=0;
    }
    

// Show correct heading
with (inst_2A9456CA) // instance ID of obLevel1Heading
    {
    switch (global.CurrentLevel)
        {
        case 1: instance_change(obLevel1Heading,0); break;
        case 2: instance_change(obLevel2Heading,0); break;
        case 3: instance_change(obLevel3Heading,0); break;
        case 4: instance_change(obLevel4Heading,0); break;
        case 5: instance_change(obLevel5Heading,0); break;
        case 6: instance_change(obLevel6Heading,0); break;
        case 7: instance_change(obLevel7Heading,0); break;
        case 8: instance_change(obLevel8Heading,0); break;
        case 9: instance_change(obLevel9Heading,0); break;
        case 10: instance_change(obLevel10Heading,0); break;
        case 11: instance_change(obSkillTesterHeading,0); break;
        }
    image_index=1; // No tick as on a level
    image_speed=0;
    }    
    
// Reset timers
    global.TimeLeft=global.ThinkingTimeDelay
    alarm[0]=30;
    
// Reset how many digits expected
global.DigitCount=0;



if global.PopupDebug show_message("-- leaving scCheckAnswer");







 




