1. history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | sort -nr | head -n10 | column -c3 -s " " -t 





