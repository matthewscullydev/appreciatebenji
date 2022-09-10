scale -= starting_scale/step;
image_xscale = scale;
image_yscale = scale;

if(image_xscale <= 0) instance_destroy();
