/// @description grows and fades.
var rx = (dcos(-direction)*phoneWidth*size/2)-(dsin(-direction)*phoneHeight*size/2);
var ry = (dsin(-direction)*phoneWidth*size/2)+(dcos(-direction)*phoneHeight*size/2);

draw_sprite_ext(spr_phoneSilhouette,0,x-rx+camera_get_view_x(view_camera[0]),y-ry+camera_get_view_y(view_camera[0]),size,size,direction,color,opacity);
