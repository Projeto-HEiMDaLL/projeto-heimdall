#!/bin/bash
function update {
	echo "Executando update no sistema..."
	echo "Aguarde o término da Atualização..."
	sleep 3
	for ((i = 0;i<1;i++))
	do
		for i in H E i M D a L L; do
			echo -ne  "\b$i"; sleep 1
		done
	done
	if ! sudo apt-get update > execução_update.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Instalação de softwares para o HEiMDaLL" --textbox execução_update.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          update
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez da instalação do Apache."  --fb 10 50
        fi
}

function apache {
	echo "Executando instalação do Apache..."
	echo "Aguarde o término da instalação..." 
	sleep 3
	for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo apt-get -y install apache2 > instalação_apache.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox instalação_apache.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          apache
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez da instalação do PHP."  --fb 10 50
        fi
}

function php {
	echo "Executando instalação do PHP..."
        echo "Aguarde o término da instalação..."
        sleep 3
	for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo apt-get -y install php libapache2-mod-php php-gd php-mysql > instalação_php.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox instalação_php.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          php
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez da instalação do Lirc."  --fb 10 50
        fi
}

function lirc {
        echo "Executando instalação do Lirc..."
        echo "Aguarde o término da instalação..."
	sleep 3
        for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        sudo apt-get -y install lirc
        sudo cp /etc/lirc/lirc_options.conf.dist lirc_options.conf
	sudo cp /etc/lirc/lircd.conf.dist/ /etc/lirc/lircd.conf
	sudo echo "dtoverlay=lirc-rpi,gpio_in_pin=22,gpio_out_pin=23" >> /boot/config.txt
	sudo apt-get -y install lirc
	sudo service lircd restart
}

whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Aguarde a mensagem de sucesso de TODOS os softwares. Pressione Enter para continuar." --fb 10 50
update
apache
php
lirc
whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "TODOS os softwares foram instalados com êxito!"  --fb 10 50

