
from urllib import parse
import requests

url = 'http://apis.data.go.kr/B551182/pubReliefHospService/getpubReliefHospList'
key = '7UHpDNa46tuw63d4mabnoly2oPsIUNCBNOJTbhzQ8GGtF%2BSqoEA5e2yTPQ6WqUSrwGQBtPxzd6g9wpah7p6vWg%3D%3D'
params =f'?{parse.quote_plus("ServiceKey")}={key}&'+parse.urlencode({

    parse.quote_plus('pageNo') : '1',
    parse.quote_plus('numOfRows') : '10',
    parse.quote_plus('spclAdmTyCd') : 'A0'
    
})

res = requests.get(url + params)
print(res.text)
print(res)
print((url+params).find(key))
