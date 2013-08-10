// Calculate how many digits expected in the answer
// Input: nothing (uses global lookup on index)
// Output: count (real) of digits in Expected answer
i=1; // position in sub-string (group 3 digits) - counts from 1 for string_char_at
j=1; // position for start of sub-string
count=9; // count of non-zero digits - start at 9 and whittle down with each leading zero found

if global.Debug show_debug_message("--- entered scExpectedDigitCount");

// Loop 3 times for char pos 2,5,8 (left-most is 1)
for (j=1; j<9; j=j+3)
    {
    // now look at the 3 digits, starting at pos 'j'
    i=j;
    
    // test if a '0', and stop when checked group of 3 digits
    while (string_char_at(global.Answer[scGetIndex()],i)=='0') && ((i-j)<3) 
        {
        if global.Debug==2
            {
            show_debug_message("char="+string_char_at(global.Answer[scGetIndex()],i));
            show_debug_message("i,j,count="+string(i)+","+string(j)+","+string(count));
            }
        count=count-1; // if a zero not a count
        i=i+1; // look at next digit to right
        }
    }
if global.Debug 
    {
    show_debug_message("Expected digit count in Answer[]="+string(count));
    show_debug_message("scGetIndex="+string(scGetIndex()));
    show_debug_message("global.Answer[scGetIndex()]="+string(global.Answer[scGetIndex()]));
    }
return count;
