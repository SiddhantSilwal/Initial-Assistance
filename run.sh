#! /bin/bash
echo "Updating System"
sudo apt -y update && sudo -y apt upgrade
sudo apt install curl
#Automatic nstallation for recommended apps

    #XDM_Download_Manager
    curl -s https://api.github.com/repos/subhra74/xdm/releases/latest|grep browser_download_url|grep .tar.xz|cut -d '"' -f 4|wget -qi -
    tar -xf xdm-setup-*.tar.xz
    sudo ./install.sh

    sudo apt install -y vlc snapd flatpak ttf-mscorefonts-installer
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


RED='\033[0;31m'
NC='\033[0m'

echo "█ █▄░█ █ ▀█▀ █ ▄▀█ █░░   ▄▀█ █▀ █▀ █ █▀ ▀█▀ ▄▀█ █▄░█ █▀▀ █▀▀
█ █░▀█ █ ░█░ █ █▀█ █▄▄   █▀█ ▄█ ▄█ █ ▄█ ░█░ █▀█ █░▀█ █▄▄ ██▄"
echo   -e 
echo -e "linux shell script dedicated to perform initial setups as users requirement for linux.\n"
echo -e "
__________________________________________________________________________________
Choice  | Target			| Summary				 |
----------------------------------------------------------------------------------
1	| Home pack 			| Parental control, games,               |
					| media players etc.			 |
----------------------------------------------------------------------------------
2	| Education pack		| Educational softwares,                 |
					| confrence call applications,           |
					| discord, and more                      |
----------------------------------------------------------------------------------	
3	| Creator's Pack		| Media players, Graphic editors and 	 |
					| digital art applications		 |
----------------------------------------------------------------------------------
4	| Office Pack			| Office applications, messaging tools   |
----------------------------------------------------------------------------------
5	| Developer's pack		| IDE, virtual machine, networking tools | 
					| preinstalled languages and more	 |
_________________________________________________________________________________|
${RED}NOTE:${NC} Summary only shows the highlight applications for information on all 
      application that will be installed please visit our read.md in github page\n"

read -p "Enter Choice: " Choice
echo You  entered $Choice


if [$Choice=1]; then
 
    #Parental_control_GNOME_Nanny
    sudo add-apt-repository ppa:nanny 
    sudo bash -c "echo 'deb http://ppa.launchpad.net/nanny/ppa/ubuntu jaunty  main' >> /etc/apt/sources.list" && sudo apt-key adv  --keyserver keyserver.ubuntu.com --recv-keys 132D48BA
    sudo apt-get update && sudo apt-get -y install nanny

    #Viber
     sudo flatpak install -y flathub com.viber.Viber

elif [$Choice=2]; then

    #Discord
    flatpak install -y flathub com.discordapp.Discord
    #zoom
    sudo flatpak install -y flathub us.zoom.Zoom
    #Telegram
    sudo add-apt-repository ppa:atareao/telegram
    sudo apt update && sudo apt -y install telegram

    #Simple_Note
    sudo flatpak install -y flathub com.simplenote.Simplenote

    #VsCode
    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

    #Openboard_(for teachers)
    sudo flatpak install -y flathub ch.openboard.OpenBoard

elif [$Choice=3]; then

    #Gimp
    sudo add-apt-repository ppa:ubuntuhandbook1/gimp
    sudo apt update
    sudo apt install gimp

    #krita
    sudo add-apt-repository ppa:kritalime/ppa
    sudo apt update
    sudo apt -y install krita
    #blender
    sudo apt -y install blender
    #kdenlive
    flatpak install flathub org.kde.kdenlive

elif [$Choice=4]; then

    #Slack
    sudo apt install -y slack
    #Viber
    sudo flatpak install -y flathub com.viber.Viber
    #Zoom
    sudo flatpak install -y flathub us.zoom.Zoom
    #Simplenote
    sudo flatpak install -y flathub com.simplenote.Simplenote

elif [$Choice=5]; then
    #vsCode
    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

fi




    



    


    



    