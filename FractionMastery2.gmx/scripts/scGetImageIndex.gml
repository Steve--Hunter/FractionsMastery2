// From the Level, Question and SubQuestion, return the
// image_index, for the question to display

// Assumes 5 Questions per level, with 5 questions in each
// Array starts at zero, i.e. L1Q1S1 returns 0


return( ( (global.CurrentLevel-1)*25+(global.CurrentQuestion-1)*5+global.CurrentSubQuestion) - 1 );

