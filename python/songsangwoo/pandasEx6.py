import pandas as pd

df2=pd.read_csv('survey.csv')

#데이터 살펴보기
print(df2.head())

#평균과 합 구하기
#df2.mean()
#수입의 평균 구하기
print(df2.income.mean())

print(df2.income.sum())

#중앙값 구하기
print(df2.income.median())

#데이터 프레임 기초통계량 구하기
print(df2.describe())

#수입의 기초통계량 구하기
print(df2.income.describe())

#기초통계량 분석하기
#빈도분석
print(df2.sex.value_counts())

#두집단 평균구하기
print(df2.groupby(df2.sex).mean())

print(df2.groupby(df2.stress).mean())