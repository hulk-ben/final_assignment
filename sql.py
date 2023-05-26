import time

import pymysql
db = pymysql.connect(host='192.168.56.5',
                     user='root',
                     password='12345',
                     database='db1')


file = open('test.csv',mode='r',encoding='utf8')
text = file.readlines()
i=len(text)

cursor = db.cursor()
for j in range(i):
    cursor = db.cursor()
    sql = "INSERT INTO cpus(name,count) values('%s','%s');" % (text[j].rstrip('\n').split(",")[0],text[j].rstrip('\n').split(",")[1])
    try:

        # 执行sql语句
        cursor.execute(sql)
        # 执行sql语句
        db.commit()
        print(sql)
    except:
        print(sql+"err")
        # 发生错误时回滚
        db.rollback()
file.flush()
file.close()

file = open('test2.csv',mode='r',encoding='utf8')
text = file.readlines()
i=len(text)

cursor = db.cursor()
for j in range(i):
    cursor = db.cursor()
    sql = "INSERT INTO kinds(name,count) values('%s','%s');" % (text[j].rstrip('\n').split(",")[0],text[j].rstrip('\n').split(",")[1])
    try:
        # 执行sql语句
        cursor.execute(sql)
        # 执行sql语句
        db.commit()
        print(sql)
    except:
        print(sql+"err")
        # 发生错误时回滚
        db.rollback()
file.flush()
file.close()

file = open('test3.csv',mode='r',encoding='utf8')
text = file.readlines()
i=len(text)

cursor = db.cursor()
for j in range(i):
    cursor = db.cursor()
    sql = "INSERT INTO circulation(name, count) values('%s','%s');" % (text[j].rstrip('\n').split(",")[0],text[j].rstrip('\n').split(",")[1])
    try:
        # 执行sql语句
        cursor.execute(sql)
        # 执行sql语句
        db.commit()
        print(sql)
    except:
        print(sql+"err")
        # 发生错误时回滚
        db.rollback()
file.flush()
file.close()


# 关闭数据库连接
db.close()
# try:
#    # 执行sql语句
#    cursor.execute(sql)
#    # 执行sql语句
#    db.commit()
# except:
#    # 发生错误时回滚
#    db.rollback()

# # 关闭数据库连接
# db.close()