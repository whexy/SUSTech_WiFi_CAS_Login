!/bin/bash
source /etc/profile
set -e
curl https://cas.sustc.edu.cn/cas/login?service=http%3A%2F%2F172.16.16.20%3A803%2Fsustc_cas.php > a.txt
s=$(grep -o -E "on\"\ value=\"(.+?)\"" a.txt)
echo $s
s=${s#*\"}
s=${s#*\"}
s=${s%%\"*}
echo $s
unm=此处填入教/学工号
pwd=此处填入密码
curl "https://cas.sustc.edu.cn/cas/login?service=http%3A%2F%2F172.16.16.20%3A803%2Fsustc_cas.php" --data "username=$unm&password=$pwd&execution=$s&_eventId=submit&geolocation="