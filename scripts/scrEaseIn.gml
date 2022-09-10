///scrEaseIn(_t,_p1,_p2);
//returns eased value

var _t,_p1,_p2;



_t = argument0;
_p1 = argument1;
_p2 = argument2;
return 3*_t*(1-_t)*(1-_t)*_p1 + 3*(_t*_t)*(1-_t)*_p2 + _t*_t*_t;
