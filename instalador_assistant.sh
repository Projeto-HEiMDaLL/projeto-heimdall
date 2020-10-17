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
	if ! sudo apt-get update > execucao_update.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Instalação de softwares para o HEiMDaLL" --textbox execucao_update.txt 20 65 --scrolltext
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
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez da instalação do Python."  --fb 10 50
        fi
}

function python {
	echo "Executando instalação do Python..."
	echo "Aguarde o término da instalação..." 
	sleep 3
	for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo apt-get -y install python3-dev python3-venv > instalacao_python.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox instalacao_python.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          python
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez de criar o ambiente virtual do Python."  --fb 10 50
        fi
}

function environment {
        echo "Executando criação do ambiente virtual..."
        echo "Aguarde o término da configuração..."
        sleep 3
        for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo python3 -m venv ambiente > criacao_ambiente.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox criacao_ambiente.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          environment
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Criação do ambiente concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez da instalação das dependências."  --fb 10 50
        fi
}

function pip {
	echo "Executando instalação das dependências do pip..."
        echo "Aguarde o término da instalação..."
        sleep 3
	for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo ambiente/bin/python -m pip install --upgrade pip setuptools wheel > instalacao_pip.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox instalacao_pip.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          pip
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação das dependências do pip concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez de ativar o ambiente virtual."  --fb 10 50
        fi
}

function ativa_env {
        echo "Executando ativação do ambiente virtual..."
        echo "Aguarde o término da configuração..."
	sleep 3
        for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        sudo source ambiente/bin/activate
}

function portaudio {
	echo "Executando instalação das dependências de áudio..."
        echo "Aguarde o término da instalação..."
        sleep 3
	for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo apt-get install -y portaudio19-dev libffi-dev libssl-dev > instalacao_portaudio.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox instalacao_portaudio.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          portaudio
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação das dependências de áudio concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez da instalação do Assistant."  --fb 10 50
        fi
}

function assistant {
	echo "Executando instalação do Google Assistant..."
        echo "Aguarde o término da instalação..."
        sleep 3
	for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo python -m pip install --upgrade google-assistant-sdk[samples] > instalacao_assistant.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox instalacao_assistant.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          assistant
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação do Google Assistant concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Agora é a vez da instalação do Authlib."  --fb 10 50
        fi
}

function authlib {
	echo "Executando instalação do Google Authlib..."
        echo "Aguarde o término da instalação..."
        sleep 3
	for ((i = 0;i<1;i++))
        do
                for i in H E i M D a L L; do
                        echo -ne "\b$i"; sleep 1
                done
        done
        if ! sudo python -m pip install --upgrade google-auth-oauthlib[tool] > instalacao_authlib.txt
        then
                whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Algo falhou, pressione Enter para ver o que houve."  --fb 10 50
                whiptail --title "Caixa textbox" --textbox instalacao_authlib.txt 20 65 --scrolltext
                if (whiptail --title "Instalação de softwares para o HEiMDaLL" --yes-button "Repetir Atualização" --no-button "Cancelar e Sair" --yesno "Deseja repetir?" 10 60) then
                          whiptail --title "A atualização irá ser executada de novo!" --msgbox ""  --fb 10 50
                          authlib
                else
                        echo "Instalação Cancelada!"
                        exit 1
                fi
                whiptail --title "Instalação de programas para o HEiMDaLL" --msgbox ""  --fb 10 50
                update
        else
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Instalação do Google Authlib concluída com Sucesso"  --fb 10 50
                 whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Sucesso, amig@. Acompanhe os próximos passos da configuração a seguir."  --fb 10 50
        fi
}

whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "Aguarde a mensagem de sucesso de TODOS os softwares. Pressione Enter para continuar." --fb 10 50
update
python
environment
pip
ativa_env
portaudio
assistant
authlib
whiptail --title "Instalação de softwares para o HEiMDaLL" --msgbox "TODOS os softwares foram instalados com êxito!"  --fb 10 50

