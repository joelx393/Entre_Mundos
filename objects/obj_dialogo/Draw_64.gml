if(tutorial == false)
{
	//Pegando altura e largura da janela
	var _gui_lar = display_get_gui_width();
	var _gui_alt = 52;

	var _xx = 0;
	var _yy = 0;
	var _c = c_black;

	var _text_x = sprite_get_width(spr_rostos) + 5;


	//Desenhando retangulo preto
	draw_sprite_ext(spr_caixa_dialogo,0,0,0,5.15,1,0,c_white,1);
	//draw_rectangle_color( _xx, _yy, _gui_lar, _gui_alt, _c, _c, _c, _c, false);
	draw_sprite(spr_rostos, spr[pagina], _xx, _yy);

	draw_set_font(fnt_fonte_1);
	draw_text_ext(_text_x, _yy, texto[pagina], 10, _gui_lar - 90);
}
else
{
	var _cam = view_camera[0];

	var _meio_x = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
	var _meio_y = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
	
	draw_sprite(tuto_spr[tuto_cont], 0, _meio_x, _meio_y - 50);

	draw_set_font(fnt_fonte_1);
	draw_text_ext(95, 15, tuto_text[tuto_cont], 10, 140);

			
}

