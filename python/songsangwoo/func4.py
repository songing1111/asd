def print_n_times(n=2, *values):
    # n번 반복
    for i in range(n):
        # values는 리스트처럼 활용
        for value in values:
            print(value)

        print()

# 함수 호출
print_n_times("안녕하세요", "즐거운", "파이썬 프로그래밍")

# 에러 발생 