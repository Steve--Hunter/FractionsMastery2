// Check if tick should be displayed
// Arguments:
// 0=Level
//
// Returns:
// image_index (0=no tick, 1=tick)
if global.LevelComplete[argument0]
{ // tick
    return 1;
}
else
{ // no tick
     return 0;
}


