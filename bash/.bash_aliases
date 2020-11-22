alias server_connect='mosh weechat'
export GOPATH=/tmp/go
export PATH=$GOPATH:$GOPATH/bin:$PATH
alias weechat='mosh weechat -- sh -c "screen -R weechat && bash"'
function streamer() {
youtube-dl -o - "$1" | mpv - 
}
alias loopon='pactl load-module module-loopback'
alias loopoff='pactl unload-module module-loopback'
export ANDROID_HOME=/home/josh/android
alias wine32='env WINEPREFIX=/home/josh/.wine32 wine'
force_color_prompt=yes
STEAM_RUNTIME=0
alias cpu_stats='while true; do uptime | grep -o load.* > usage; sleep 2; done'
alias twitch_time='while true; do sleep 1;date +%R:%S > /tmp/timefile; done'
alias openhirens="sudo cryptsetup luksOpen /home/josh/Downloads/Deluge/Hiren\'s\ BootCD\ 15.2\ \[2014\]/Hiren\'s\ BootCD\ 15.3 hlkv"
alias closehirens="sudo cryptsetup luksClose hlkv"
alias usystemctl="systemctl --user"
alias moddl="wget --user-agent=Mozilla --content-disposition -E"