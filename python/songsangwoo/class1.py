class Student:
    def __init__(self, name, korean, math, english, science):
        self.name = name
        self.korean = korean
        self.math = math
        self.english = english
        self.science = science
    def get_sum(self):
        return self.korean + self.math + self.english + self.science
    def get_average(self):
        return self.get_sum() / 4
    def to_string(self):
        return"{}\t{}\t{}".format(self.name, self.get_sum(), self.get_average())

# 학생 선언
student = Student("윤인성", 87, 98, 88, 95)

# 인스턴스 확인
print("isinstance(student, Student):", isinstance(student, Student))