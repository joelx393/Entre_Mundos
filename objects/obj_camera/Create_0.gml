resolu_largura = 1280;
resolu_altura = 760;
resolu_escala = 4;

global.view_largura = resolu_largura / resolu_escala;
global.view_altura = resolu_altura / resolu_escala;

view_alvo = obj_player;
view_spd = 0.1;

window_set_size(global.view_largura * resolu_escala, global.view_altura * resolu_escala);

surface_resize(application_surface, global.view_largura * resolu_escala, global.view_altura * resolu_escala);

display_set_gui_size(global.view_largura, global.view_altura);


