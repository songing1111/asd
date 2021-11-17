import urllib3
from bs4 import BeautifulSoup

def get_html_from_naver_search(keyword):
    burl = 'https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query='
    surl = burl + keyword
    req = urllib3.PoolManager()
    return req.request('GET', surl).data

result = get_html_from_naver_search('python')
parsed = BeautifulSoup(result, 'html.parser')

print(parsed.title)
print(parsed.p)
print(parsed.find('a'))
