import pandas as pd
import matplotlib.pyplot as plt
plt.rc('font', family='Malgun Gothic')

#데이터 불러오기
df = pd.read_excel('방한외래관광객_20211029.xlsx', skipfooter=3)
print(df.shape)
print(df.head())

#첫번째 줄 삭제
df = df.iloc[1:,:]

#Columns 중에 Unnamed 부분들은 전부 삭제처리
remove_list = ['Unnamed: 5', 'Unnamed: 7', 'Unnamed: 9', 'Unnamed: 11', 'Unnamed: 13', 'Unnamed: 15']
df = df.drop(columns=remove_list)

#'대륙', '분기', '년' Columns에서 소계라고 입력되어 있는 values 항목들 제거
ignore_list = ['아시아 소계', '아메리카 소계', '유럽 소계', '오세아니아 소계', '아프리카 소계', '기타 소계', '교포 소계']
df = df[df['대륙'].isin(ignore_list) == False]

ignore_list_2 = ['1 소계', '2 소계', '3 소계', '4 소계']
df = df[df['분기'].isin(ignore_list_2)==False]

ignore_list_3 = ['2010 소계', '2011 소계', '2012 소계', '2013 소계', '2014 소계', 
'2015 소계', '2016 소계', '2017 소계', '2018 소계', '2019 소계', '2020 소계']
df = df[df['년'].isin(ignore_list_3)==False]

#결측치 확인
df.isnull().sum()

# 방한 목적 요소 중 결측치들의 경우 전부 0인 값으로 0으로 대입 진행
df['관광'] = df['관광'].fillna(0)
df['상용'] = df['상용'].fillna(0)
df['공용'] = df['공용'].fillna(0)
df['유학연수'] = df['유학연수'].fillna(0)
df['기타'] = df['기타'].fillna(0)

#대륙 결측치 코드
asia=['중국', '일본', '대만', '홍콩', '마카오', '필리핀', '인도네시아', '태국', '베트남',
 '인도', '말레이시아', '싱카포르', '몽골', '우즈베키스탄', '미얀마', 'GCC', '카자흐스탄',
  '터키', '캄보디아', '스리랑카', '방글라데시', '파키스탄', '이스라엘', '이란', '아시아 기타']
american=['미국', '캐나다', '브라질', '멕시코', '아메리카 기타']
europe=['러시아', '영국', '독일', '프랑스', '이탈리아', '네덜란드', '우크라이나', '스페인', '루마니아',
 '노르웨이', '스웨덴', '폴란드', '스위스', '포르투갈', '오스트리아', '핀란드', '벨기에', '크로아티아',
  '그리스', '불가리아', '덴마크', '아일랜드', '유럽 기타']
oseania=['오스트레일리아', '뉴질랜드', '오세아니아 기타']
africa=['남아프리카공화국', '아프리카 기타']
etc=['국적미상', '교포']

def continents(x):
    if x in asia:
        return '아시아'
    elif x in american:
        return '아메리카'
    elif x in europe:
        return '유럽'
    elif x in oseania:
        return '오세아니아'
    elif x in africa:
        return '아프리카'
    else:
        return '기타'
df['대륙'] = df['국적'].apply(continents)

#인덱스 순서 0부터 다시 재정렬
df1 = df.reset_index(drop=True)

#년도 결측치 처리 진행
year_list = []
start = 1

for year in range(2010,2022):
    for number in range(1,241):     #각 년도별 총 240개씩의 데이터
        if start <= 2640:           #총 row수 2640
            year_list.append(year)
            start += 1

df1['년'] = year_list

#분기 결측치 처리 진행 / 분기별 60개씩의 row 데이터가 있음 이를 적용한 조건문
quarter_list = []
start = 1

for year in range(2010,2022):
    for quarter in range(1,241):
        if start <= 2640:
            if quarter <= 60:
                x=1
            elif(quarter>60) & (quarter <=120):
                x=2
            elif(quarter>120) & (quarter <=180):
                x=3
            else:
                x=4
            start += 1
            quarter_list.append(x)
df1['분기'] = quarter_list

# 4)2019년 3분기 전체 점유비율 기준 상위 5개국 추출
    #- 전체비율(%) = 국적별 관광객 수 / 해당 분기 전체 관광객 수 

#2019년 3분기 기준의 데이터만 추출
cond = (df1['년']==2019) & (df1['분기']== 3)
df_2019 = df1[cond]

#전체비율 구하기
df_2019['전체비율(%)'] = round(df_2019['관광'] / df_2019['관광'].sum() * 100,1)

# 상위 5개국 추출해서 리스트로 저장하기
sel_country = df_2019.sort_values(by='전체비율(%)', ascending=False).head(5)
country = sel_country['국적'].unique().tolist()

#그래프 x축 설정을 위한 기간별 분기 설정작업
df1['기간'] = df1['년'].astype(str) + '-'+df1['분기'].astype(str)

#상위 5개국에 대한 시계열 그래프 작업 진행
for cntry in country:

    #국적 관광객만 추출
    df_filter = df1[df1['국적'] == cntry]

    #그래프 크기 조절
    plt.figure(figsize=(15,4))

    #그래프 내용 설정
    plt.plot(df_filter['기간'], df_filter['관광'])

    #그래프 타이틀, X축, Y축 이름 달기
    plt.title('{} 국적의 관광객 추이'.format(cntry))
    plt.xlabel('기준년월')
    plt.ylabel('관광객수')

    #x축 눈금 값 설정
    plt.xticks(['2010-1', '2011-1', '2012-1', '2013-1', '2014-1', '2015-1',
     '2016-1', '2017-1', '2018-1', '2019-1', '2020-1', '2021-1'])

    #그래프 표현하기
    plt.show()