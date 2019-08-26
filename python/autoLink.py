from requests import Session
from re import findall
import os
url = "https://cas.sustc.edu.cn/cas/login?service=http://172.16.16.20:803/sustc_cas.php"
username = ""  # 此处填写学工号/教工号
password = ""  # 此处填写密码


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
    connect(username, password)
