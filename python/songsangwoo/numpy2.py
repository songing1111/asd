import usecsv
import numpy as np
quest = np.array(usecsv.switch(usecsv.opencsv('quest.csv')))

print(quest[quest>5])
quest[quest>5]=5
print(quest)
usecsv.writecsv('resultcsv.csv',list(quest))