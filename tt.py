import pymysql
from pyecharts import options as opts
from pyecharts.charts import Bar
import pyecharts.options as opts
from pyecharts.charts import Pie

db = pymysql.connect(host='192.168.56.5',
                     user='root',
                     password='12345',
                     database='db1')
cursor = db.cursor()


def query(sql):
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        id = row[0]
    return id


sql = "SELECT count(name) from cpus where name like '%intel%';"
intel = query(sql)
AMD = query("SELECT count(*) from cpus where name like '%AMD%';")
Apple = query("SELECT count(*) from cpus where name like '%Apple%';")
haisi = query("SELECT count(name) from cpus where name like '%海思麒麟%';")
gaotong = query("SELECT count(name) from cpus where name like '%高通%';")

# V1 版本开始支持链式调用
bar = (
    Bar()
    .add_xaxis(["Intel", "AMD", "Apple", "海思麒麟", "高通"])
    .add_yaxis("厂家", [intel, AMD, Apple, haisi, gaotong])
    .set_global_opts(title_opts=opts.TitleOpts(title="cpu厂家产品情况"))
)
bar.render()
bar = (
    Bar()
    .add_xaxis(["台式机", "笔记本", "游戏本", "一体机", "平板电脑", "服务器", "工作站", "笔记本配件", "平板电脑配件"])
    .add_yaxis("数量/万", [55, 34, 6.2, 4.5, 21, 26, 5.5, 56, 58])
    .set_global_opts(title_opts=opts.TitleOpts(title="cpu厂家产品情况"))
)
bar = (
    Bar()

.add_xaxis(["台式机", "笔记本", "游戏本", "一体机", "平板电脑", "服务器", "工作站", "笔记本配件", "平板电脑配件"])
.add_yaxis("数量/万", [55, 34, 6.2, 4.5, 21, 26, 5.5, 56, 58])
.reversal_axis()
.set_series_opts(label_opts=opts.LabelOpts(position="right"))
.set_global_opts(title_opts=opts.TitleOpts(title="各类型产品数量"))
)

bar.render("2.html")
lianxiang = query("SELECT count(name) from circulation where name like '%联想%';")
apple = query("SELECT count(name) from circulation where name like '%Apple%';")
dell = query("SELECT count(name) from circulation where name like '%戴尔%';")
hepp = query("SELECT count(name) from circulation where name like '%惠普%';")
ason = query("SELECT count(name) from circulation where name like '%华硕%';")


x_data = ["联想", "Apple", "戴尔", "惠普", "华硕"]
y_data = [lianxiang, apple, dell, hepp, ason]
data_pair = [list(z) for z in zip(x_data, y_data)]
data_pair.sort(key=lambda x: x[1])

(
    Pie(init_opts=opts.InitOpts(bg_color="#2c343c"))
    .add(
        series_name="访问来源",
        data_pair=data_pair,
        rosetype="radius",
        radius="55%",
        center=["50%", "50%"],
        label_opts=opts.LabelOpts(is_show=False, position="center"),
    )
    .set_global_opts(
        title_opts=opts.TitleOpts(
            title="销量前30名主流厂商产品占比",
            pos_left="center",
            pos_top="20",
            title_textstyle_opts=opts.TextStyleOpts(color="#fff"),
        ),
        legend_opts=opts.LegendOpts(is_show=False),
    )
    .set_series_opts(
        tooltip_opts=opts.TooltipOpts(
            trigger="item", formatter="{a} <br/>{b}: {c} ({d}%)"
        ),
        label_opts=opts.LabelOpts(color="rgba(255, 255, 255, 0.3)"),
    )
    .render("customized_pie.html")
)
