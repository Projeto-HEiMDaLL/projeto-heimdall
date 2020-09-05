### Olá, visitante! 👋

<!--
**Projeto-HEiMDaLL/projeto-heimdall** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->

Fico feliz que tenha encontrado este humilde projeto, fique a vontade pra me explorar e testar, caso tenha alguma dúvida, eu serei seu guia! 

Mas calma aí, o que sou eu?

Você muito provavelmente me encontrou pesquisando no Google ou no GitHub mesmo, sobre automação residencial, ou caiu aqui por engano pesquisando o filme do Thor. De qualquer forma, bem-vindo. Eu sou o HEiMDaLL, seu novo assistente virtual. Meu nome é esse em homenagem ao Deus Nórdico das Pontes, pois é isso que eu quero ser pra você: uma ponte entre você e a tecnologia presente na sua casa.

Minha principal utilidade é permitir que você controle dispositivos da sua casa - no momento, somente aqueles que usem tecnologia infravermelho - apenas com sua voz, ou usando seu celular. Assim, você terá mais comodidade e conforto no seu lar. Futuramente, meus criadores pretendem melhorar minhas capacidades, englobando mais dispositivos e ações além do seu imaginário... Hehe :smiling_imp:

Agora, sem mais enrolações, aqui vai a 'pequena' lista do que você vai precisar pra fazer a mágica acontecer:

(IMPORTANTE: TERMINE DE LER AS INSTRUÇÕES ANTES DE FAZER QUALQUER COISA! :raised_hand:)

- Internet em casa (com roteador, não vale usar Wi-Fi do vizinho :sweat_smile:)
	- IMPORTANTÍSSIMO: verifique se seu roteador permite que você faça configurações de acesso externo, como o "Port Forwarding". Alguns modelos não têm essa opção, e ela é necessária pro meu melhor funcionamento. Este link (https://suporte.topdata.com.br/suporte/como-configurar-o-redirecionamento-de-porta-em-um-modem-ou-roteador) te dá mais informações sobre como verificar isso e como ativar, mas lembre-se que é meio diferente pra cada marca de roteador, nesse caso, talvez você deve olhar também o site da fabricante. É ESSENCIAL que você veja isso ANTES de seguir o projeto ou gastar seu dinheirinho suado, ok? :money_with_wings:

- Um Raspberry Pi 3 (não conhece? aqui vão algumas informações sobre ele: https://olhardigital.com.br/noticia/raspberry-pi-o-que-e-para-que-serve-e-como-comprar/82921; e este é o site oficial - sim, tá em inglês: https://www.raspberrypi.org)
	- Importante citar, o Raspberry precisa ser o 3 ou uma versão melhor. Eu fui testado no 1 por muito tempo, sem sucesso; não garanto que eu vá funcionar no 2 e nas outras versões da mesma linha, e não quero que você perca seu tempo também, então já deixo esse recado :smile:
	- MUITO CUIDADO AO MANUSEAR ESSA PLAQUINHA! Sempre pegue o Pi pelas bordas, em hipótese alguma pegue no 'meio' da placa, não encoste nos circuitos e muito menos nos pinos. De preferência, coloque seu 'Rasp' dentro de uma case, aquela caixinha, pra facilitar o transporte.

- Um cartão de memória para instalar um sistema operacional e o restante dos softwares (acho que uns 8 GB de memória está bom)
	- Esse sistema operacional deve ser o Raspbian Stretch, que você pode baixar aqui: link
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

E aí, é só seguir o esquema e colocar tudo certinho no protoboard. LEMBRE-SE, TOME CUIDADO COM OS CABOS DE ENERGIA (POSITIVO E NEGATIVO). Ahh, e você terá também um esquema de onde colocar os jumpers no Raspberry Pi. :heavy_check_mark:

