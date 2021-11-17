#try except 구문으로 예외 처리
try:
    number_input_a = int(input("정수 입력> "))
    print("원의 반지름 : ", number_input_a)
    print("원의 둘레 : ", 2 * 3.14 * number_input_a)
    print("원의 넓이 : ", 3.14 * number_input_a * number_input_a)
except Exception as exception:
    # 예외 객체 출력
    print("type(exception):", type(exception))
    print("exception:", exception)