# flask 모듈에서 Flask 클래스와 render_template 메소드를 가져옴
from flask import Flask, render_template

# Flask 클래스를 통해, FlaskApp 객체(인스턴스) 생성
FlaskApp = Flask(__name__)

@FlaskApp.route("/")
def Hello():
    return '<h1> Klasse</h1>'

# 한개 입력 파라미터
@FlaskApp.route("/userinfo1/<username>")
def user(username):
    return render_template('Userinfo1.html', name=username)

# 세개 입력 파라미터
@FlaskApp.route("/userinfo2/<username>/<location>/<age_num>")
def user2(username, location, age_num):
    return render_template('Userinfo2.html', name=username, country=location, age=age_num)

if __name__=="__main__":
    FlaskApp.run()