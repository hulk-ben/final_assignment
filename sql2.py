import pymysql
from pyecharts.charts import Bar
db = pymysql.connect(host='192.168.56.5',
                     user='root',
                     password='12345',
                     database='db1')
cursor = db.cursor()
def query(sql):

    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        results = cursor.fetchall()
        for row in results:
            id = row[0]
            name = row[1]
            count = row[2]
            # 打印结果
            print("id=%d,name=%s,count=%s" % \
                  (id, name, count))
    except:
        print("Error: unable to fetch data")
sql = "SELECT * FROM cpus;"
query(sql)
sql = "SELECT * FROM kinds;"
query(sql)
sql = "SELECT * FROM circulation;"
query(sql)
db.close()


bar = Bar("我的第一个图表", "这里是副标题")
bar.add("服装", ["衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子"], [5, 20, 36, 10, 75, 90])
# bar.print_echarts_options() # 该行只为了打印配置项，方便调试时使用
bar.render()    # 生成本地 HTML 文件