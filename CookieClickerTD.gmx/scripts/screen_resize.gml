///screen_resize()
//resizes and reposition all the views 
//also resizes the application surface

var window_width = window_get_width();
var window_height = window_get_height();

var header_height = 20;
var footer_height = 20;
var banner_width = obj_banner_controller.stats_width;

var zoom = view_get_zoom();

surface_resize(application_surface, max(window_width, 1), max(window_height, 1));

view_xport[view_game] = 0;
view_yport[view_game] = header_height;
view_wport[view_game] = window_width - banner_width;
view_hport[view_game] = window_height - header_height - footer_height;

view_xport[view_banner] = window_width - obj_banner_controller.stats_max_width;
view_yport[view_banner] = header_height;
view_wport[view_banner] = obj_banner_controller.stats_max_width;
view_hport[view_banner] = window_height - header_height - footer_height;

view_xport[view_header] = 0;
view_yport[view_header] = 0;
view_wport[view_header] = window_width;
view_hport[view_header] = header_height;

view_xport[view_footer] = 0;
view_yport[view_footer] = window_height - footer_height;
view_wport[view_footer] = window_width;
view_hport[view_footer] = footer_height;

view_set_zoom(zoom);

view_wview[view_banner] = view_wport[view_banner];
view_hview[view_banner] = view_hport[view_banner];

view_wview[view_header] = view_wport[view_header];
view_hview[view_header] = view_hport[view_header];

view_wview[view_footer] = view_wport[view_footer];
view_hview[view_footer] = view_hport[view_footer];

with (obj_banner_controller)
{
    if surface_exists(background_surf)
    {
        surface_free(background_surf);
        background_surf = -1;
    }
}
