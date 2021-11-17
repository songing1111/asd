# 변수 선언
numbers = [5, 15, 6, 20, 7, 25]

# 반복
for number in numbers:
    # number가 10보다 작으면 다음 반복으로 넘어감
    if number < 10:
        continue
    # 출력
    print(number)