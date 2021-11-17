# 셀레니움 패키지 및 웹드라이버 로드
from selenium import webdriver
driver = webdriver.Chrome('./chromedriver.exe')
# 변수 또는 인자 값
target_url = "https://www.naver.com/"

# 웹 크롤링 --> 웹페이지 가져오기
driver.get(target_url)

# 검색창 찾기
search_box = driver.find_element_by_name('query')

# 검색창에 검색어 입력
search_box.send_keys('python')

# 검색창 실행
search_box.submit()

# 종료
driver.close()