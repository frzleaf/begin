1.
grep -rwn word dir

$ grep -rwn "celine dion" ~/musics

2.

$ grep -ivc 'root' /etc/passwd

3.

$ rgrep -ci linux /etc | awk -F: '{ if ($NF) print $1 }'

4.
$ fgrep -vc root /etc/passwd

5.
$ egrep 'root|ROOT' /etc/passwd
