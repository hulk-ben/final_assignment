import random
import time

import requests
from selenium import webdriver
from bs4 import BeautifulSoup
from selenium.webdriver.common.by import By

headers = {
    'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/113.0'
}
url = "https://search.jd.com/Search?keyword=%E7%94%B5%E8%84%91&wq=%E7%94%B5%E8%84%91&pvid=796f94f8c6d44496a7ffe2b0cc0c8aed&click=1"
res = requests.get(url, headers=headers)
# print(res.text)
soup = BeautifulSoup(res.text, 'html.parser')
kinds = soup.select("div.J_selectorLine:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ul:nth-child(1) > li > a:nth-child(1)")



file = open('test2.csv', mode='x', encoding='utf8')

# url = "https://search.jd.com/search?keyword=%E7%94%B5%E8%84%91&wq=%E7%94%B5%E8%84%91&ev=933_177884%5E"
# for i in range(2,73):
#     url = "https://search.jd.com/search?keyword=%E7%94%B5%E8%84%91&wq=%E7%94%B5%E8%84%91&ev=933_17788"+str(i)+"%5E"
#     res = requests.get(url,headers=headers)
#     soup = BeautifulSoup(res.text,'html.parser')
#     count  = soup.select("#J_resCount")
#     for i in count:
#         print(i.get_text())
#     time.sleep(random.randint(1,10))
#     # print(res.text)
driver = webdriver.Firefox()
driver.get(url)
num = []
cont = 0
for i in range(1, 10):
    jUsername = driver.find_element(By.CSS_SELECTOR,
                                    value="div.J_selectorLine:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ul:nth-child(1) > li:nth-child("+str(i)+") > a:nth-child(1)")
    jUsername.click();
    jUsername = driver.find_element(By.CSS_SELECTOR, value="#J_resCount")

    num.append(jUsername.text)
    print(jUsername.text)
    jUsername = driver.find_element(By.CSS_SELECTOR, value=".crumbs-first > a:nth-child(1)")
    jUsername.click()
    time.sleep(random.randint(1, 10))
for kind in kinds:

    str = kind.get_text()
    file.write(str + ',' + num[cont]+'\n')
    cont = cont + 1
