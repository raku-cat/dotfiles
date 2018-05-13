alias server_connect='mosh weechat'
export GOPATH=/tmp/go
export PATH=$GOPATH:$GOPATH/bin:$PATH
export PATH=~/.bin:${PATH}
alias weechat='mosh weechat -- sh -c "screen -R weechat && bash"'
function streamer() {
youtube-dl -o - "$1" | mpv - 
}
alias loopon='pactl load-module module-loopback'
alias loopoff='pactl unload-module module-loopback'
export ANDROID_HOME=/home/josh/android
alias wine32='env WINEPREFIX=~/.wine32 wine'
force_color_prompt=yes
STEAM_RUNTIME=0
alias v4l-cam='sudo modprobe v4l2loopback video_nr=0 card_label="Microsoft LifeCam VX-3000" exclusive_caps=1'
alias cpu_stats='while true; do uptime | grep -o load.* > usage; sleep 2; done'
alias twitch_time='while true; do sleep 1;date +%R:%S > timefile; done'
alias openhirens="sudo cryptsetup luksOpen /home/josh/Downloads/Deluge/Hiren\'s\ BootCD\ 15.2\ \[2014\]/Hiren\'s\ BootCD\ 15.3.iso hlkv"
alias closehirens="sudo cryptsetup luksClose hlkv"