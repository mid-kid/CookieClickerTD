///src_create_tower(x, y, type, class, size)
//creates a tower and returns it

with(instance_create(argument0*tile_size, argument1*tile_size, obj_tower))
{
    tower_type = argument2;
    tower_class = argument3;
    tower_size = argument4;
    tower_stats_update();
    return self
}
