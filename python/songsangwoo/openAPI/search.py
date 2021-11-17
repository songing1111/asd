import os
import sys
import urllib.request
client_id = "TS9RUk3SCTIPDn0D18MD"
client_secret = "T8mvcKkkRK"
encText = urllib.parse.quote("김치")
url = "https://openapi.naver.com/v1/search/blog?query=" + encText

request = urllib.request.Request(url)
request.add_header("X-Naver-Client-Id", client_id)
request.add_header("X-Naver-Client-Secret", client_secret)
response = urllib.request.urlopen(request)
rescode = response.getcode()
if(rescode==200):
    response_body = response.read()
    print(response_body.decode('utf-8'))
else:
    print("Error Code:" +rescode)