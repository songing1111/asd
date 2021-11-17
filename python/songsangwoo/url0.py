from urllib import request

# urlopen() 구글의 메인페이지 읽기
target = request.urlopen("https://google.com")
output = target.read()

print(output)