///keyboard_set_x_offset(Offset)
if instance_exists(object_keyboard){
    object_keyboard.Keycaps_xoffset = real(argument0);
    __spse_keyboard_reset_surface();
    }
