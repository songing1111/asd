import pymysql
conn = pymysql.connect(host='127.0.0.1', user='root', password='1234', db='hanbitDB', charset='utf8')

cur = conn.cursor()

cur.execute("CREATE TABLE IF NOT EXISTS userTable(id char(4), userName char(15), email char(20), birthYear int)")

cur.execute("INSERT INTO userTable VALUES('john', 'John Bann', 'john@naver.com', 1990)")
cur.execute("INSERT INTO userTable VALUES('kim', 'Kim Chi', 'kimn@daum.net', 1992)")
cur.execute("INSERT INTO userTable VALUES('lee', 'Lee Pal', 'lee@paran.com', 1988)")
cur.execute("INSERT INTO userTable VALUES('park', 'Park Su', 'park@gmail.com', 1980)")

conn.commit()