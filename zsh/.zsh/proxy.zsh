unset http_proxy
unset https_proxy
unset ftp_proxy

ssid=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep "\sSSID"|sed -e "s/[^:]*: //")

if [ "$ssid" = "SojoUser" ]; then
  export http_proxy="http://wwwproxy.cc.sojo-u.ac.jp:3128"
  export https_proxy=$http_proxy
  export ftp_proxy=$http_proxy
fi