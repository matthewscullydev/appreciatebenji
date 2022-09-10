///scrPDir(x,y);
//returns point_direction(x,y,objPlayer.x,objPlayer.y);

if(!instance_exists(objPlayer)) exit;


var _xx = argument0;
var _yy = argument1;

return point_direction(_xx,_yy,objPlayer.x,objPlayer.y);

