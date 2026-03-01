function scr_textos()
{
	switch nome
	{
		case "primeiro_dialogo":
		
		tuto_spr[0] = spr_tutorial_1;
		tuto_text[0] = "O DTR é um dispositivo que conecta o mundo original a outras versões dele pelo multiverso. Permitindo transitar entre eles ao pressionar 'ESPAÇO'."
		
		tuto_spr[1] = spr_tutorial_2;
		tuto_text[1] = "Caso você acabe parcialmente dentro de uma parede, não poderá se mover até a próxima troca e ficará exposto para inimigos. Ficar totalmente dentro de uma parede garante sua total proteção."
		
		
		texto[0] = "Karina, na escuta?                                                                                                                                         ---Prescione 'E'--- "
		spr[0] = 1;
		
		texto[1] = "Afirmativo! Infiltração bem sucedida!";
		spr[1] = 0;
		
		texto[2] = "Já posso usar nosso novo brinquedinho?";
		spr[2] = 0;
		
		texto[3] = "O DTR não é brinquedo e ainda está em fase de teste, você precisa tomar cuidado, ou vai acabar presa dentro de uma parede.";
		spr[3] = 1;
		
		texto[4] = "Nos testes você estava, 'Sobreposição de massa isso' 'Sobreposição de massa aquilo'. Eu vou ficar bem, é só usar o DST de novo.";
		spr[4] = 0;
		
		texto[5] = "DTR!!! E no treino não tinha guardas armados te perseguindo.";
		spr[5] = 1;
		
		texto[6] = "Quer saber, que se dane, vai em frente, seu objetivo está no ultimo andar, no escritório do Kornov.";
		spr[6] = 1;
		
		texto[7] = "Evite os guardas, pegue os arquivos e saia dai.";
		spr[7] = 1;
		
		texto[8] = "Vou sintonizar um mundo que esteja mais proximo ao nosso em seu DTR. Vá em frente senhora 'Boazona'";
		spr[8] = 1;
		
		texto[9] = "Patric...";
		spr[9] = 0;
		
		texto[10] = "Que foi?";
		spr[10] = 1;
		
		texto[11] = "O dia que você quiser arrumar uma namorada...";
		spr[11] = 0;
		
		texto[12] = "Eu te empresto meus culhões.";
		spr[12] = 0;
		
		break;
		
		case "tutorial_visao":
		
		tuto_spr[0] = spr_tutorial_3;
		tuto_text[0] = "O sinal no topo da tela indica se você está: Normal                            Escondido                          Sendo observado";
		
		texto[0] = "Só passando para lembrar que apartir daqui você deve tentar ficar fora de vista, ou então...";
		spr[0] = 1;
		
		texto[1] = "Eu não sou burra Patric... e não estou afim de levar um tiro";
		spr[1] = 0;
		
		break;
		
		case "primeiro_monstro":
		
		tuto_spr[0] = noone;
		tuto_text[0] = noone;
		
		texto[0] = "Patric... que barulho foi esse?";
		spr[0] = 0;
		
		texto[1] = "Foi só uma interferência, o DTR está dessincronizado.";
		spr[1] = 1;
		
		texto[2] = "Consegue concertar?";
		spr[2] = 0;
		
		texto[3] = "Vou pensar no seu caso.";
		spr[3] = 1;
		
		texto[4] = "Não to brincando Pat, faz isso logo.";
		spr[4] = 0;
		
		texto[5] = "Relaxa, vai demorar só um momento.";
		spr[5] = 1;
		
		break;
		
		case "segundo_monstro":
		
		texto[0] = "Patric, que droga é essa?";
		spr[0] = 0;

		texto[1] = "Patric?";
		spr[1] = 0;
		
		texto[2] = "PATRIC!!";
		spr[2] = 0;
		
		texto[3] = "Você sabe que eu não tenho visão do que você ta vendo, né?!";
		spr[3] = 1;
		
		texto[4] = "Só me tira logo daqui.";
		spr[4] = 0;
		
		texto[5] = "Concertado.";
		spr[5] = 1;
		
		break;
		
		case "lodo":
		
		texto[0] = "Patric?!";
		spr[0] = 0;
		
		texto[1] = "To um passo a sua frente.";
		spr[1] = 1;
		
		texto[2] = "A coisa que você disse antes, eu consegui indentificar.";
		spr[2] = 1;
		
		texto[3] = "Aquilo é pura energia multiversional. Por isso interferiu no DTR.";
		spr[3] = 1;
		
		texto[4] = "To tentando evitar ele, mas aquela coisa parece focada em me pegar.";
		spr[4] = 0;
		
		texto[5] = "De qualquer forma, não era disso que eu queria falar.";
		spr[5] = 0;
		
		texto[6] = "Suponho que seja da imensa quantidade daquela mesma energia cobrindo tudo abaixo de você?!";
		spr[6] = 1;
		
		texto[7] = "Tem como passar?";
		spr[7] = 0;
		
		texto[8] = "Não nesse mundo!";
		spr[8] = 1;
		
		texto[9] = "Saquei! Vou lembrar disso quando descer.";
		spr[9] = 0;
		
		
		break;
		
		
		case "inicio_final":
		
		texto[0] = "Patric... Acho que isso não devia estar aqui.";
		spr[0] = 0;
			
		texto[1] = "Ele deve estar te rastreando.";
		spr[1] = 1;
		
				
		texto[2] = "Karina, CORRE!";
		spr[2] = 1;
		
		break;
		
		case "final":
		
		texto[0] = "KARINA!!!";
		spr[0] = 1;
			
		texto[1] = "A energia multiversional não está atrás de você.";
		spr[1] = 1;
		
				
		texto[2] = "Tenho certeza do contrário!";
		spr[2] = 0;
		
		texto[3] = "NÃO!! Ele está atrás do DTR.";
		spr[3] = 1;
		
		texto[4] = "Você precisa se livrar dele.";
		spr[4] = 1;
		
		break;
		
		case "fim":
		
		texto[0] = "Tudo pronto, dados roubados!";
		spr[0] = 0;
			
		texto[1] = "Algum sinal da criatura?";
		spr[1] = 0;
				
		texto[2] = "Não estou detectando nada, parece que o DTR foi o problema.";
		spr[2] = 1;
		
		texto[3] = "Desativei o sistema de segurança, então sair vai ser moleza.";
		spr[3] = 0;
		
		texto[4] = "Mandou bem Karina";
		spr[4] = 1;
		
		texto[5] = "E você tinha alguma dúvida disso?!";
		spr[5] = 0;
		
		texto[6] = "Da proxima vez vamos fazer isso da forma normal, nada de DST";
		spr[6] = 0;
		
		texto[7] = "Foi o que ela disse!";
		spr[7] = 1;
		
		texto[8] = "É por isso que eu sou a agente e você é o nerd da cadeira.";
		spr[8] = 0;
		
		break;
	}
	

}