//Based on (Level, Question, SubQuestion)-all global return index to array holding image_index, Expected Answer and Q Type
// Count from 0
// Input: none (uses Global variables for Level, Question, SubQuestion, and array QperLevel for no. Q per Level
// Output: which row of Answers text file (read into 1D arrays, see rmHome creation code)




// Calc base index for the Level
// Could be 5 or 10 Q per level, but always 5 SubQuestions per level
k=1;
BaseIndex=0;
while (k<global.CurrentLevel)
    {
    BaseIndex=BaseIndex+global.QperLevel[k];
    k+=1;
    }

    
   if global.Debug==3
    {
    show_debug_message("scGetIndex returning " + string (BaseIndex*5 + (global.CurrentQuestion-1)* 5 + global.CurrentSubQuestion -1) );
     show_debug_message("BaseIndex,L,Q,SQ " + string (BaseIndex) + " " + string(global.CurrentLevel) +  " " + string( global.CurrentQuestion) +  " " + string (global.CurrentSubQuestion) );
    }
   

if global.CurrentLevel==11 // Skill Tester level has no SubQ per Q
    {
    return( BaseIndex*5 + (global.CurrentQuestion-1));
    }
else
    { 
    return( BaseIndex*5 + (global.CurrentQuestion-1)* 5 + global.CurrentSubQuestion -1);
    }


