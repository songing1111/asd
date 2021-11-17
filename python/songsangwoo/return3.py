# 함수 선언
def sum_all(start=0, end=100, step=1):
    # 변수 선언
    output = 0
    # 반복문
    for i in range(start, end+1, step):
        output += i
    return output

print("A.", sum_all(0, 100, 10))
print("B.", sum_all(end=100))
print("C.", sum_all(end=100, step=2))