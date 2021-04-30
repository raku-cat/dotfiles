export GOPATH=/tmp/go
export PATH=$GOPATH:$GOPATH/bin:$PATH
function streamer() {
youtube-dl -o - "$1" | mpv - 
}
alias loopon='pactl load-module module-loopback'
alias loopoff='pactl unload-module module-loopback'
export ANDROID_HOME=/home/josh/android
alias wine32='env WINEPREFIX=~/.wine32 wine'
alias cpu_stats='while true; do uptime | grep -o load.* > usage; sleep 2; done'
alias twitch_time='while true; do sleep 1;date +%R:%S > timefile; done'
alias usystemctl="systemctl --user"
alias makepkg_opt="makepkg -scCfi"