from urllib import request
from bs4 import BeautifulSoup

target=request.urlopen("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchStay?serviceKey=7UHpDNa46tuw63d4mabnoly2oPsIUNCBNOJTbhzQ8GGtF%2BSqoEA5e2yTPQ6WqUSrwGQBtPxzd6g9wpah7p6vWg%3D%3D&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y")

soup=BeautifulSoup(target,"html.parser")

for item in soup.select("item"):
    try:
        print("숙박업소명:", item.select_one("title").text)
        print("주소:", item.select_one("addr1").text)
        print("조회수:", item.select_one("readcount").text)
        print("전화번호:", item.select_one("tel").text)
        
    except:
        print("전화번호: 없음")
        pass

    finally:
        print()