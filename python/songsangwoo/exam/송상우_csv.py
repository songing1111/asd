import csv, re
seodaemun=[]
header=[]
rownum=0

with open("송상우_대전서구부동산.csv","r", encoding="cp949") as f:
    csv_data = csv.reader(f)
    for row in csv_data:
        if re.match("대전광역시 서구 둔산로" , row[2]):
            print(row[1:3])