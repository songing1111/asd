import urllib.request as ur
from bs4 import BeautifulSoup as bs

url = 'https://media.daum.net/'

soup = bs(ur.urlopen(url).read(), 'html.parser')

# 특정 클래스 속성을 출력
print(soup.find_all('div', {"class" : "item_issue"}))

# a 태그 5개만 출력해보기
print(soup.find_all('a')[:5])

# a 태그의 링크 5개만 출력해보기
for i in soup.find_all('a')[:5]:
    print(i.get('href'))

# 특정기사 본문 저장하기
article1 = 'https://news.v.daum.net/v/20200427090630709'

# soup2 객체로 열기
soup2 = bs(ur.urlopen(article1).read(), 'html.parser')

# 특정기사 본문 출력하기
for i in soup2.find_all('p'):
    print(i.text)

# 'links.txt"라는 제목의 쓰기 전용 파일을 열어줍니다.
f=open('links.txt', 'w')

# 링크 파일만 모으기
for i in soup.find_all('div', {"class":"item_issue"}):
    f.write(i.find_all('a')[0].get('href')+'\n')
f.close()

# 기사 모으기
url = 'https://news.daum.net/'
soup=bs(ur.urlopen(url).read(), 'html.parser')
f= open('article_total.txt', 'w')
for i in soup.find_all('div',{"class":"item_issue"}):
    try:

        f.write(i.text+'\n')

        f.write(i.find_all('a')[0].get('href')+ '\n')

        soup2=bs(ur.urlopen(i.find_all('a')[0].get('href')).read(), 'html.parser')

        for j in soup2.find_all('p'):

            f.write(j.text)

    except:
        pass

f.close()