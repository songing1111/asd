class Person:
    #생성자 메서드 정의
    def __init__(self, name, birthday, id):
        self.name = name
        self.birthday = birthday
        self.id = id

    # 객체를 문자열로 표현하는 __str__ 메서드 정의
    def __str__(self):
        return "이름 : " + self.name + ", 생일 : " + self.birthday + ", 아이디 : " + self.id
    
    # 리스트에서 객체를 문자열로 표현하는 __repr__ 메서드 정의
    def __repr__(self):
        return "이름 : " + self.name + ", 생일 : " + self.birthday + ", 아이디 : " + self.id

class Employee(Person):
    # 생성자 메서드 정의
    def __init__(self, name, birthday, id, salary, career_year):
        # Person 클래스의 생성자 호출
        super().__init__(name, birthday, id)
        self.salary = salary
        self.career_year = career_year

    # 객체를 문자열로 표현하는 __str__ 메서드 정의
    def __str__(self):
        return super().__str__() + ", 연봉 : " + str(self.salary) + ", 경력 연차 : " + str(self.career_year)

    # 리스트에서 객체를 문자열로 표현하는 __repr__ 메서드 정의
    def __repr__(self):
        return super().__repr__() + ", 연봉 : " + str(self.salary) + ", 경력 연차 : " + str(self.career_year)

employee = Employee("강은희", "9월8일", "깡그리", 2000, 26)

print(str(employee))