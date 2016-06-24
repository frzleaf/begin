1.
$ history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | sort -nr | head -n10 | column -c3 -s " " -t 

2.
$ awk '!a[$0]++' ./logs

3.
$ awk '{gsub(/ /, "", $0); print } ' ./file_with_heading_space





