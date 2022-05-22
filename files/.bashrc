# Termux Setup + VNC session
sleep 3
toilet -f letter $(date +%H:%M:%S)
echo
toilet -f letter PRINTENV
printenv
echo
toilet -f letter PARTITIONS
sleep 0.5
df
echo
toilet -f letter SCRIPT
cat ~/bin/termux-file-editor
cat ~/bin/termux-url-opener
echo
toilet -f letter SCRIPT
cat ~/script.sh | bat
echo
toilet -f letter $(date +%H:%M:%S)
echo
figlet Virtual | lolcat
sleep 0.2
echo
figlet Network | lolcat
sleep 0.2
echo
figlet Computing | lolcat
echo
neofetch
export PATH="$PATH:/data/data/com.termux/files/home/.cargo/bin:~/.local/bin:~/go/bin"
echo $PATH
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
echo
cal -3
echo
inxi
macchina
neofetch
rxfetch
echo
echo "Your ZSH Version is $(zsh --version)"
echo
neofetch | grep Uptime
echo
neofetch | grep CPU
echo
neofetch | grep Memory
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
sleep 1
echo
pwd | lolcat
echo
toilet -f letter SCRIPT
bat ~/script.sh
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
echo
neofetch | grep Uptime
echo
neofetch | grep CPU
echo
neofetch | grep Memory
echo
toilet -f letter $(date +%H:%M:%S)
cal -3
sleep 0.3
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
echo
cd ~/fsociety
pwd | lolcat
lsd ~/fsociety
echo
toilet -f letter PRINTENV
printenv
echo
toilet -f letter PACKAGES
echo
~/ubuntu/start-ubuntu.sh pwd | lolcat
pkg list-in
echo
~/ubuntu/start-ubuntu.sh apt list --installed
echo
toilet -f letter DESKTOP
~/ubuntu/start-ubuntu.sh apt update
~/ubuntu/start-ubuntu.sh apt install neofetch
~/ubuntu/start-ubuntu.sh neofetch
echo
~/ubuntu/start-ubuntu.sh neofetch | grep Uptime
echo
~/ubuntu/start-ubuntu.sh neofetch | grep CPU
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
echo
~/ubuntu/start-ubuntu.sh pwd | lolcat
lsd
echo
bat .nanorc | lolcat
echo
cal -3
echo
toilet -f letter VNC
echo
vncserver -list | lolcat
vncserver -localhost
echo
echo
~/ubuntu/start-ubuntu.sh cat /root/.profile | bat
echo
# echo "Opening Desktop..., to go back, go to Recents -> Termux" | lolcat
# echo "termux-open vnc://127.0.0.1:5901"
#.termux-open vnc://127.0.0.1:5901
# echo
echo
toilet -f letter UPDATE
apt update
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
echo
toilet -f letter DOWNLOADER.PY
cat downloader.py
echo
echo
figlet Virtual | lolcat
sleep 0.2
echo
figlet Network | lolcat
sleep 0.2
echo
figlet Computing | lolcat
echo
neofetch
macchina
sleep 0.5
neofetch | grep Uptime
sleep 0.2
echo
neofetch | grep Package
sleep 0.2
echo
pwd | lolcat
lsd
echo
sleep 0.5
ls
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
toilet -f letter ~/.BASHRC
cat .bashrc | bat
sleep 0.5
toilet -f letter SCRIPT
cat ~/script.sh | bat
sleep 0.5
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
echo
~/ubuntu/start-ubuntu.sh pwd | lolcat
~/ubuntu/start-ubuntu.sh ls -l
~/ubuntu/start-ubuntu.sh apt install lsd
~/ubuntu/start-ubuntu.sh sleep 0.5 
~/ubuntu/start-ubuntu.sh lsd
echo
toilet -f letter PYTHON
python ~/test/test.py
echo
echo
date +'Today is %A %d of %m %y' | lolcat
date +%H:%M:%S
echo
toilet -f letter INCONOSLATA
figlet 3.0.0
echo "Changing font... " | lolcat
mv ~/.termux/f.ttf ~/.termux/font.ttf
termux-reload-settings
echo

