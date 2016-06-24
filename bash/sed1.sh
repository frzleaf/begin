
1.
$ sed 's/Nick/John/g' report.txt

2.
$ sed 's/Nick|nick/John/g' report.txt
 

3.
$ sed 's/^/ /' file.txt >file_new.txt

4.
$ sed -n '/Of course/,/attention you \
pay/p' myfile


5.
$ sed -n 12,18p file.txt

6.
$ sed 12,18d file.txt

7.
$ sed G file.txt 

8.
$ sed -f script.sed file.txt

9.
$ sed '5!s/ham/cheese/' file.txt

10.
$ sed '$d' file.txt

11.
$ sed '/[0-9]\{3\}/p' file.txt

12.
$ sed '/boom/!s/aaa/bb/' file.txt

13.
$ sed '17,/disk/d' file.txt
echo ONE TWO | sed "s/one/unos/I"


14.
$ sed 'G;G' file.txt

15.
$ sed 's/.$//' file.txt

16.
$ sed 's/^[ ^t]*//' file.txt

17.
$ sed 's/[ ^t]*$//' file.txt

18.
$ sed 's/^[ ^t]*//;s/[ ^]*$//' file.txt


19.
$ sed 's/foo/bar/' file.txt

20.
$ sed 's/foo/bar/4' file.txt

21.
$ sed 's/foo/bar/g' file.txt 

22.
$ sed '/baz/s/foo/bar/g' file.txt

23.
$ sed '/./,/^$/!d' file.txt

24.
$ sed '/^$/N;/\n$/D' file.txt


25.
$ sed '/./,$!d' file.txt

26.
$ sed -e :a -e '/^\n*$/{$d;N;};/\n$/ba' \
file.txt

27.
$ sed -e :a -e '/\\$/N; s/\\\n//; ta' \
file.txt


28.
$ sed '/regex/,+5/expr/'

29.
$ sed '1~3d' file.txt

30.
$ sed -n '2~5p' file.txt

31.
$ sed 's/[Nn]ick/John/g' report.txt


32.
$ sed -n '/RE/{p;q;}' file.txt


33.
$ sed '0,/RE/{//d;}' file.txt

34.
$ sed '0,/RE/s//to_that/' file.txt

35.


36.
$ sed ':a;s/\(^\|[^0-9.]\)\([0-9]\+\)\\
([0-9]\{3\}\)/\1\2,\3/g;ta' file.txt

37.
$ sed -r "s/\<(reg|exp)[a-z]+/\U&/g"

38.
$ sed '1,20 s/Johnson/White/g' file.txt


39.
$ sed '1,20 !s/Johnson/White/g' file.txt

40.
$ sed '/from/,/until/ { s/\<red\>/magenta/g; \
s/\<blue\>/cyan/g; }' file.txt

41.
$ sed '/ENDNOTES:/,$ { s/Schaff/Herzog/g; \
s/Kraft/Ebbing/g; }' file.txt

42.
$ sed '/./{H;$!d;};x;/regex/!d' file.txt
 sed -e '/./{H;$!d;}' -e 'x;/RE1/!d;\
/RE2/!d;/RE3/!d' file.txt

 sed ':a; /\\$/N; s/\\\n//; ta' file.txt
 sed 's/14"/fourteen inches/g' file.txt
 sed 's/\/some\/UNIX\/path/\/a\/new\\
/path/g' file.txt
 sed 's/[a-g]//g' file.txt

43.
$ sed 's/\(.*\)foo/\1bar/' file.txt

44.
$ sed '1!G;h;$!d' 

45.
$ sed '/\n/!G;s/\(.\)\(.*\n\)/&\2\1\
/;//D;s/.//'

46.
$ sed 10q file.txt

47.
$ sed -e :a -e '$q;N;11,$D;ba' \
file.txt

48.
$ sed '$!N; /^\(.*\)\n\1$/!P; D' \
file.txt

49.
$ sed '$!N; s/^\(.*\)\n\1$/\1/;\
 t; D' file.txt

50.
$ sed '$!N;$!D' file.txt

51.
$ sed -n '$p' file.txt

52.
$ sed '/regexp/!d' file.txt

53.
$ sed -n '/regexp/{g;1!p;};h' file.txt


54.
$ sed -n '/regexp/{n;p;}' file.txt

55.
$ sed '/pattern/d' file.txt

56.
$ sed '/./!d' file.txt

57.
$ sed '/^$/N;/\n$/N;//D' file.txt


58.
$ sed -n '/^$/{p;h;};/./{x;/./p;}'\
 file.txt

59.
$ sed 's/.\x08//g' file

60.
$ sed '/^$/q'

61.
$ sed '1,/^$/d'

62.
$ sed '/^Subject: */!d; s///;q'

63.
$ sed 's/^/> /'


64.
$ sed 's/^> //'

65.
$ sed -e :a -e 's/<[^>]*>//g;/</N;//ba'

66.
$ sed '/./{H;d;};x;s/\n/={NL}=/g'\
 file.txt | sort \
| sed '1s/={NL}=//;s/={NL}=/\n/g'

67.
$ sed 's@/usr/bin@&/local@g' path.txt

68.
$ sed 's@^.*$@<<<&>>>@g' path.txt

69.
$ sed 's/\(\/[^:]*\).*/\1/g' path.txt


70.
$ sed 's/\([^:]*\).*/\1/' /etc/passwd

echo "Welcome To The Geek Stuff" | sed \
's/\(\b[A-Z]\)/\(\1\)/g'
(W)elcome (T)o (T)he (G)eek (S)tuff

71.
$ sed -e '/^$/,/^END/s/hills/\
mountains/g' file.txt




72.
$ sed -e '/^#/d' /etc/services | more

73.
$ sed '$s@\([^:]*\):\([^:]*\):\([^:]*\
\)@\3:\2:\1@g' path.txt

74.
$ sed -n -e '/regexp/{=;x;1!p;g;$!N;p;D;}'\
 -e h file.txt


75.
$ sed '/regex/{x;p;x;}' file.txt

76.
$ sed '/AAA/!d; /BBB/!d; /CCC/!d' file.txt

77.
$ sed '/AAA.*BBB.*CCC/!d' file.txt

78.
$ sed -n '/^.\{65\}/p' file.txt

79.
$ sed -n '/^.\{65\}/!p' file.txt

80.
$ sed '/regex/G' file.txt

81.
$ sed '/regex/{x;p;x;G;}' file.txt

82.
$ sed = file.txt | sed 'N;s/\n/\t/'

83.
$ sed -e :a -e 's/^.\{1,78\}$/\
 &/;ta' file.txt

84.
$ sed -e :a -e 's/^.\{1,77\}$/ &/;ta' -e \
's/\( *\)\1/\1/' file.txt
