///scrPlayerPos();
/*
Returns the player position in an array with 
    array[0] = X Position
    array[1] = Y Position
*/
var xy;
xy[0] = 0; xy[1] = 0;
if instance_exists(objPlayer) {
    xy[0] = objPlayer.x;
    xy[1] = objPlayer.y;
}
return xy;
