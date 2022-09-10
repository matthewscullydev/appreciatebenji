//kills the player

if (instance_exists(objPlayer) && (!global.noDeath && !global.debugNoDeath))
{
    if (global.gameStarted) //normal death
    {
        global.deathSound = audio_play_sound(sndRazzor_Death,0,false);
        
        if (!global.muteMusic)  //play death music
        {
            if (global.deathMusicMode == 1) //instantly pause the current music
            {
                audio_pause_sound(global.currentMusic);
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
            }
            else if (global.deathMusicMode == 2)    //fade out the current music
            {                
                with (objWorld)
                    event_user(0);  //fades out and stops the current music
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
            }
        }
        audio_pause_sound(global.currentMusic);
        
        obj = instance_create(0,0,objCustomGameOverSurface);
        obj.effect_x = scrPX();
        obj.effect_y = scrPY();
        
        //obj = instance_create(0,0,objCustom_Flash);
        //obj.depth = -1000000000000;
        
        if(instance_exists(objBow)){
            with(objBow){
                obj = instance_create(scrPX(),scrPY(),objCustomBullet);
                obj.sprite_index = sprite_index;
                obj.image_xscale = image_xscale;
                obj.image_yscale = image_yscale;
                obj.image_alpha = image_alpha;
                obj.image_index = image_index;
            }
        }
        with (objPlayer)
        {
            obj = instance_create(scrPX(),scrPY(),objCustomBullet);
            obj.sprite_index = sprite_index;
            obj.image_xscale = xScale;
            obj.image_yscale = image_yscale;
            obj.image_alpha = image_alpha;
            obj.image_index = image_index;
            //instance_create(x,y,objBloodEmitter);
            instance_destroy();
        }
        
        instance_create(0,0,objCustomGameOver);
        
        global.death += 1; //increment deaths
            
        scrSaveGame(false); //save death/time
    }
    else    //death in the difficulty select room, restart the room
    {
        with(objPlayer)
            instance_destroy();
            
        room_restart();
    }
}
