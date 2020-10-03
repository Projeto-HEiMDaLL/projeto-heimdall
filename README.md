### Olá, visitante! 👋

Fico feliz que tenha encontrado este humilde projeto, fique a vontade pra me explorar e testar. A partir daqui, eu serei seu guia! 

Mas calma aí, o que sou eu?

Você muito provavelmente me encontrou pesquisando no Google ou no GitHub mesmo, sobre automação residencial, ou caiu aqui por engano pesquisando o filme do Thor ⚡:muscle:. De qualquer forma, bem-vindo. Eu sou o HEiMDaLL, seu novo assistente virtual. Meu nome é esse em homenagem ao Deus Nórdico das Pontes, pois é isso que eu quero ser pra você: uma ponte entre você e a tecnologia presente na sua casa.

Minha principal utilidade é permitir que você controle dispositivos da sua casa - no momento, somente aqueles que usem tecnologia infravermelho - apenas com sua voz, ou usando seu celular. Assim, você terá mais comodidade e conforto no seu lar. Futuramente, meus criadores pretendem melhorar minhas capacidades, englobando mais dispositivos e ações além do seu imaginário... Hehe :smiling_imp:

Caso tenha alguma dúvida ou sugestão, sinta-se livre para contatar meus criadores pelo e-mail: projeto.heimdall@gmail.com

Agora, sem mais enrolações, aqui vai a 'pequena' lista do que você vai precisar pra fazer a mágica acontecer:

(IMPORTANTE: TERMINE DE LER AS INSTRUÇÕES ANTES DE FAZER QUALQUER COISA! :raised_hand:)

- Internet em casa (com roteador, não vale usar Wi-Fi do vizinho :sweat_smile:)
	- IMPORTANTÍSSIMO: verifique se seu roteador permite que você faça configurações de acesso externo, como o "Port Forwarding". Alguns modelos não têm essa opção, e ela é necessária pro meu melhor funcionamento. Este link (https://suporte.topdata.com.br/suporte/como-configurar-o-redirecionamento-de-porta-em-um-modem-ou-roteador) te dá mais informações sobre como verificar isso e como ativar, mas lembre-se que é meio diferente pra cada marca de roteador, nesse caso, talvez você deve olhar também o site da fabricante. É ESSENCIAL que você veja isso ANTES de seguir o projeto ou gastar seu dinheirinho suado, ok? :money_with_wings:
	- Não manja muito de redes? Tudo bem, aqui vai uma explicação rápida. O Port Forwarding é uma funcionalidade do roteador, onde quando alguém acessa o IP dele, redireciona pra alguma porta de algum computador na sua rede caseira.
	- "Calma aí, amigão, o que que é IP? Porta? Rede caseira? Tô perdidão!" 
	- O 'IP' é a sigla para Protocolo da Internet, ou Internet Protocol, em inglês. Esse protocolo funciona igual um CPF, ou seja, ele dá um número único pra conexões e máquinas na Internet mundial. Você tá lendo isso? Você tem um IP. Geralmente ele é assim:
		192.168.XXX.XXX (pode ser diferente, mas esse é bem comum)
	- E rede caseira? Na verdade, o nome é LAN (Local Area Network). É a rede que envolve os computadores, celulares, máquinas em geral, até Smart TVs e impressoras, que ficam dentro da sua casa e recebem Internet do mesmo roteador, seja por Wi-Fi, seja por cabo. O IP que eu coloquei ali em cima, é um formato básico pra IPs de máquinas em redes locais (192.168.0.1 geralmente é o IP do próprio roteador dentro da sua rede. 192.168.0.2 deve ser o IP do primeiro computador que se conectou nela, e por aí vai). O IP do seu roteador na Internet é único NO MUNDO, portanto ele pode ser mais 'cabuloso'.
	- Porta é um número único dentro de cada computador, cada uma corresponde à um serviço. Por exemplo, a porta 80 dos servidores Web é usada pra servir sites, então, cada vez que você acessa um site no navegador, ele tá acessando a porta 80 do computador servindo aquele site por trás dos panos.

- Um Raspberry Pi 3 (não conhece? aqui vão algumas informações sobre ele: https://olhardigital.com.br/noticia/raspberry-pi-o-que-e-para-que-serve-e-como-comprar/82921; e este é o site oficial - sim, tá em inglês: https://www.raspberrypi.org)
	- Importante citar, o Raspberry precisa ser o 3 ou uma versão melhor. Eu fui testado no 1 por muito tempo, sem sucesso; não garanto que eu vá funcionar no 2 e nas outras versões da mesma linha, e não quero que você perca seu tempo também, então já deixo esse recado :smile:
	- MUITO CUIDADO AO MANUSEAR ESSA PLAQUINHA! Sempre pegue o Pi pelas bordas, em hipótese alguma pegue no 'meio' da placa, não encoste nos circuitos e muito menos nos pinos. De preferência, coloque seu 'Rasp' (obs.: Rasp = Raspberry Pi :wink:) dentro de uma case, aquela caixinha, pra facilitar o transporte.
	- É preferível que você adquira o kit completo do Raspberry Pi, com manual de instruções e o escambau; caso contrário, terá que comprar também uma fonte 5 volts e de 1 à 3 ampéres (NÃO USE FONTES 'TURBO'!), um cabo HDMI para ligar o Rasp na sua TV e exibir sua imagem, um teclado e um mouse com conexões USB.
	
- Um microfone USB e uma caixa de som USB (isso você conhece, né?! Mais tranquilo, hehe)

- Uma TV (muito provavelmente você já tem uma :sweat_smile: de preferência com entrada HDMI)

- Um cartão de memória para instalar um sistema operacional e o restante dos softwares (acho que uns 8 GB de memória está bom)
	- Esse sistema operacional deve ser o Raspbian Stretch, que você pode baixar aqui: http://downloads.raspberrypi.org/raspbian/images/raspbian-2017-09-08/2017-09-07-raspbian-stretch.zip
	- Caso você nunca tenha formatado um cartão de memória pra instalar um sistema operacional, aqui vai um vídeo explicando muito bem: https://youtu.be/ZAs0MGXotcY.
	Lembrando que você pode seguir o passo-a-passo do vídeo, mas a versão do Raspbian deve ser o Stretch! O vídeo apresenta o Raspbian Buster, e eu não funcionei muito bem nele...
	- Após terminar a instalação, o Raspberry vai te pedir pra permitir algumas atualizações... pois bem, NÃO ATUALIZE! Faça como o professor do vídeo e dê SKIP. Primeiro porque essa atualização demora um baita tempo, dependendo da sua conexão com a internet; segundo e mais importante, porque a atualização vai mudar a versão do kernel do Raspbian, o que provavelmente vai causar alguns problemas de compatibilidade com os meus programas. Então, NÃO ATUALIZE, OU EU MORRO! :fearful:
	
- Peças. O meu sistema precisa de algumas peças pra funcionar, porque nativamente eu não tenho um emissor e um receptor infravermelho, beleza? Então, pra fazer isso, você precisa montar um esquema em cima de uma protoboard. Mas aí você se pergunta, como irei fazer isso? Alguém irá me salvar? Sim, não "priemos cânicos"! Eu estou aqui e meus criadores também, eles fizeram um desenho do esquema pra você não ficar perdido. As peças que você vai precisar, você pode encontrar online no FilipeFlop (https://www.filipeflop.com/categoria/componentes-eletronicos), ou em qualquer loja de eletrônicos da sua cidade, as peças são:
	- um protoboard (a placa de prototipação)
	- um emissor infravermelho (duas pernas)
	- um receptor infravermelho (três pernas)
	- alguns jumpers (dez jumpers se não me engano)
	- uma resistência
	- um transistor

	E aí, é só seguir o esquema e colocar tudo certinho no protoboard. Não ligue os jumpers do board ao Raspberry ainda, deixe para fazer isso depois dos próximos passos.
	LEMBRE-SE, TOME CUIDADO COM OS CABOS DE ENERGIA (POSITIVO E NEGATIVO). Ahh, e você terá também um esquema de onde colocar os jumpers no Raspberry Pi. :heavy_check_mark:

	EIS AQUI OS ESQUEMAS:
		- esquemas

- Após montar o esquema no protoboard, ligue o Rasp (mas não ligue o protoboard no Rasp ainda, até porque o dispositivo precisa estar DESLIGADO pra isso!), e clone os meus repositórios nele pra executar os programas que formam meu sisteminha.
	- Peraí, o que seria clonar? Aqui no GitHub, vocês têm a opção de baixar um projeto em seus computadores, pra utilizar seus recursos localmente.
	- E como fazer isso? Bom, muito simples. Estando com o Rasp ligado, você só tem que dar o comando **git clone https://github.com/Projeto-HEiMDaLL/projeto-heimdall.git** na pasta /var/www/html, e então execute os scripts baixados. Entendeu? 

		...talvez não :sweat_smile:
	- Relaxa, o vídeo aqui embaixo mostra na prática e com detalhes, o que você precisa fazer. Pegue seu cafezinho :coffee: e assista com atenção: :point_down:
		- link videos clonar e executar script (clonar ja existe)
- Agora, acho que é uma boa hora pra você conectar seu microfone USB e sua caixa de som USB... nas portas USB. Uma configuração no Rasp será necessária pra que seus periféricos funcionem. Aqui vai mais um videozinho do meu canal pra te ajudar:
	- link video perifericos (ainda n existe)
	- Abaixo, os textos mostrados no vídeo:
	
		#ARQUIVO /etc/asound.conf

		pcm.dsnooper {
			type dsnoop
			ipc_key B16357492
			ipc_key_add_uid 0
			ipc_perm 0666
			slave {
				pcm "hw:1,0"
				channels 1
			}
		}

		pcm.!default {
			type asym
			playback.pcm {
				type plug
				slave.pcm "hw:0,0"
			}
			capture.pcm {
				type plug
				slave.pcm "dsnooper"
			}
		}

		#ARQUIVO /home/pi/.asound.rc

		pcm.!default {
			type asym
			capture.pcm "mic"
			playback.pcm "speaker"
		}
		pcm.mic {
			type plug
			slave{
				pcm"hw:1,0"
			}
		}
		pcm.speaker{
			type plug
			slave{
				pcm"hw:0,0"
			}
		}
		
	(provavelmente o GitHub tirou as quebras de linha do texto, então tecle "Enter" pra quebrar as linhas onde o vídeo mostrar, certo?!)
	
	-ESPAÇO PARA MAIS COISA- VIDEO DO APP
	
- Bom, depois de subir sua chave, o aplicativo vai te mostrar o nome do arquivo recebido e me informar que eu devo instalar e configurar o Google Assistant em mim. Assim que o aplicativo informar que a configuração deu certo, você vai lá no nosso querido Terminal e executa este comando aqui:

		google-oauthlib-tool --scope https://www.googleapis.com/auth/assistant-sdk-prototype \
	      --scope https://www.googleapis.com/auth/gcm \
	      --save --headless --client-secrets /var/www/html/projeto_assistant/DIGITE_AQUI_O_NOME_DA_SUA_CHAVE.json

		(cole as três linhas de uma vez, taokei?)
	
	- Se tu fez tudo certinho, o Terminal vai te responder com um link. Copia ele pro navegador, que vai te levar até uma página do Google. Nela, você só diz que autoriza o uso da chave e blábláblá, em seguida, ela vai te mandar um código cheio de letra e número. Só copia ele e cola no Terminal onde você tá executando o comando acima. Shazam.
