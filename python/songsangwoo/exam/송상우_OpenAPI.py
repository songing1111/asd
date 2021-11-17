from urllib import request
from bs4 import BeautifulSoup

target = request.urlopen("http://data.ex.co.kr/openapi/business/representFoodServiceArea?key=0400634370&type=xml&numOfRows=10&pageNo=1")

soup = BeautifulSoup(target, "html.parser")

print(soup)