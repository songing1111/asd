import os

print("현재 운영체제 : ", os.name)
print("현재 폴더 : ", os.getcwd())
print("현재 폴더 내부의 요소 : ", os.listdir())

# 폴더 만들기 + 제거
os.mkdir("hello")
os.rmdir("hello")

# 파일 생성 + 이름 변경
with open("original.txt", "w") as file:
    file.write("hello")
os.rename("original.txt", "new.txt")

# 파일 제거
os.remove("new.txt")
#os.unlink("new.txt")

# 시스템 명령어 실행
os.system("dir")