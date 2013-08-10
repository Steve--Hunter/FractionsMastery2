// Check if enough digits have been given, if so, check if answer is correct
// Inputs: None (uses global lookup)
// Output: None - will call scCheckAnswer to wrap up the question

// check no. digits given vs Expected number

if global.Debug show_debug_message("--- Entered scCheckEnoughDigitsGiven");

if global.DigitCount>=scExpectedDigitCount()
    {
    // Provided enough digits
    scCheckAnswer();
    }
else
    {
    return(0);
    }
