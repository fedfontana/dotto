.PHONY: input_font

define eclipse_desktop_string
[Desktop Entry] 
Name=Eclipse
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse
Name[en_US]=Eclipse
endef

update: 
	sudo apt-get update

upgrade: update
	sudo apt-get upgrade -y

#TODO Controllare i flag di curl e fc-cache
jetbrains: curl
	curl -LOk https://download.jetbrains.com/fonts/JetBrainsMono-1.0.3.zip
	unzip JetBrainsMono-1.0.3.zip -d ~/.fonts
	rm ~/JetBrainsMono-1.0.3.zip
	fc-cache -fv	

keylayout:
  setxkbmap -rules evdev -model pc105 -layout it -variant ,
  setxkbmap -query

grub_customizer: 
	sudo apt install -y grub-customizer

#TODO Controllare i flag, controllare tee e i suoi flag, controllare se i flag di wget sono utili o meno 
insomnia:
	echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
	wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
	sudo apt update
	sudo apt install -y insomnia

onefetch: cargo
  git clone https://github.com/o2sh/onefetch /tmp/onefetch
  pushd /tmp/onefetch
  make install
  popd

msteams:
	wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
	sudo apt install ./teams_1.3.00.5153_amd64.deb
	rm ./teams_1.3.00.5153_amd64.deb
	
#! sudo apt install discord funziona su popos! controllare se funziona su "tutte" le distro. Se non funziona da tutte le parti mettere controllo!
discord:
	wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
	sudo apt install -y ./discord.deb
	rm ./discord.deb

#TODO controllare comando e controllare flag di curl
#! non funziona
docker: curl
	curl -fsSL https://get.docker.com -o get-docker.sh

#! aggiungere altri templates: .gitignore, tex.gitignore, ecc
templates: 
	touch ~/Templates/plain_text.txt

folder_setup: 
	mkdir ~/repo
	mkdir ~/uni
	
#! controllare il path
dart: git
	sudo apt update
	sudo apt install -y apt-transport-https
	sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
	sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
	sudo apt update
	sudo apt install -y dart

#! controllare se è già in path!
flutter: git dart
	git clone -v --progress https://github.com/flutter/flutter.git ~/.flutter

# non testata
#! aggiungere a path/controllare se c'è già
android: java
	sudo apt-add-repository ppa:paolorotolo/android-studio
	sudo apt update
	sudo apt install -y android-studio
	/opt/android-studio/bin/studio.sh

pyvenv: pip3
	pip3 install virtualenv

#! aggiungere eclipse a path
eclipse: java
	cd /tmp; wget https://mirror.ibcp.fr/pub/eclipse/technology/epp/downloads/release/2020-09/R/eclipse-java-2020-09-R-linux-gtk-x86_64.tar.gz
	cd /opt; sudo tar -xzf /tmp/eclipse-java-2020-09-R-linux-gtk-x86_64.tar.gz
	touch /tmp/eclipse.desktop #? perche non fare sta roba in /tmp? --> non bisogna fare rm alla fine  
	@echo  > /tmp/eclipse.desktop
	@echo Filled eclipse.desktop with the right data!
	sudo desktop-file-install /tmp/eclipse.desktop

razer:
  	sudo add-apt-repository -y ppa:openrazer/stable
  	sudo add-apt-repository -y ppa:polychromatic/stable
	sudo apt update
	sudo apt install -y openrazer-meta polychromatic
	sudo gpasswd -a $USER plugdev
	#reboot
	
# https://input.fontbureau.com/download/index.html?customize&fontSelection=fourStyleFamily&regular=InputMonoNarrow-Regular&italic=InputMonoNarrow-Italic&bold=InputMonoNarrow-Bold&boldItalic=InputMonoNarrow-BoldItalic&a=ss&g=ss&i=serif&l=serif&zero=slash&asterisk=0&braces=straight&preset=consolas&line-height=1.2&email=
input_font:
	cp -r ./input_font ~/.fonts/Input
	fc-cache -fv
