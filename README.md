# SUSTech WiFi Quick Login

Empower your devices with no screen to automatically sign in SUSTech WiFi.

Recommend: Use the shell version.
```shell
#!/bin/bash
curl https://cas.sustech.edu.cn/cas/login?service=http%3A%2F%2F172.16.16.20%3A803%2Fsustech_cas.php > a.txt
s=$(grep -o -E "on\"\ value=\"(.+?)\"" a.txt)
s=${s#*\"}
s=${s#*\"}
s=${s%%\"*}
# 此处填写学工号/教工号
unm=11810101
# 此处填入密码
pwd=123456
curl "https://cas.sustech.edu.cn/cas/login?service=http%3A%2F%2F172.16.16.20%3A803%2Fsustech_cas.php" --data "username=$unm&password=$pwd&execution=$s&_eventId=submit&geolocation="
```

Or use the python version (`requests` library required).
```python
from requests import Session
from re import findall
url = "https://cas.sustech.edu.cn/cas/login?service=http://172.16.16.20:803/sustech_cas.php"
def connect(username, password):
    s = Session()
    r = s.get(url)
    execution = findall('on" value="(.+?)"', r.text)[0]
    data = {
        'username': username,
        'password': password,
        'execution': execution,
        '_eventId': 'submit',
        'geolocation': ''
    }
    r = s.post(url, data)
    print(r)
if __name__ == "__main__":
    username = "11810101"  # 此处填写学工号/教工号
    password = "123456"  # 此处填写密码
    connect(username, password)
```
