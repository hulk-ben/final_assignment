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
cpus = soup.select(
    "div.J_selectorLine:nth-child(5) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ul:nth-child(1) > li > a:nth-child(1)")

# for cpu in cpus:
#     cont = 0
#     str = cpu.get_text()
#     print(str)

file = open('test.csv', mode='x', encoding='utf8')

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
for i in range(1, 73):
    jUser = driver.find_element(By.CSS_SELECTOR,
                                    value="div.J_selectorLine:nth-child(5) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(" + str(
                                        i) + ") > a:nth-child(1)")
    jUser.click();
    jUser = driver.find_element(By.CSS_SELECTOR, value="#J_resCount")

    num.append(jUser.text)
    print(jUser.text)
    jUser = driver.find_element(By.CSS_SELECTOR, value=".crumb-select-item > i:nth-child(3)")
    jUser.click()
    time.sleep(random.randint(1, 10))
cont = 0
for cpu in cpus:
    str = cpu.get_text()
    print(file.write(str + ',' + num[cont] + '\n'))
    cont = cont + 1
