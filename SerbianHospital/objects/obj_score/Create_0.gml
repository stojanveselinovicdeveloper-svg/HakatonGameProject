global.life = 3;
global.score = 0;
global.stability = array_create(6);
for(var i = 0; i < 6; i++){
	global.stability[i] = noone;
}

alarm_set(0, 60*10);