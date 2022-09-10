if(is_active){
    if(!variable_instance_exists(self, "m2d_carrier")){
        x = m2d_x + lengthdir_x(m2d_radius,m2d_angle);
        y = m2d_y + lengthdir_y(m2d_radius,m2d_angle);
    }
    else{
        x = m2d_carrier.x + lengthdir_x(m2d_radius,m2d_angle);
        y = m2d_carrier.y + lengthdir_y(m2d_radius,m2d_angle);
    }
    m2d_angle += m2d_angle_delta;
    m2d_radius += m2d_radius_delta;
}
