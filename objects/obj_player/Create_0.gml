//Velocidades

vel_h = 0;
vel_v = 0;

vel = 1.5;
vel_furtivo = 1;
vel_original = 1.5;

forca_pulo = -3.5;

sumida = false;

para_rugido = 60;

//Gravidade
grav = 0.17;

//Controle do coiote Jump
coiote = 0;
coiote_max = 5;


//Direção do player
dir = 0;

//Ataque
ataque = false;

//Teste de funcionabilidade de escondido
estado_parede = 0;
lista_paredes = ds_list_create();

sprite_teste = spr_player_parado_testes;

//Medidor do poder de troca
instance_create_layer(-20,-20,"Instances",obj_medidor);