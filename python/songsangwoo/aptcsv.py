import usecsv
import re

apt = usecsv.switch(usecsv.opencsv('apt_202110.csv'))
print(apt[:3])

# 아파트 한달동안 거래 확인
print(len(apt))

# 자료구조 확인
print(apt[0])

# 5개 데이터의 시군구만 검색
for i in apt[:6]:
    print(i[0])

# 시군구, 아파트 단지명, 거래금액 확인
for i in apt[:6]:
    print(i[0], i[4], i[-5])

new_list=[]
#면적 120이상, 3억이하, 시군구에서 대전광역시 포함
for i in apt:
    try:
        if i[5]>=120 and i[-5] <=30000 and re.match('대전광역시', i[0]):
            new_list.append(i[0], i[4], i[-5])
    except: pass

usecsv.writecsv('over120_lover30000.csv', new_list)