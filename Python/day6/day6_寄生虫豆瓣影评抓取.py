from urllib import request;
import random;
from bs4 import BeautifulSoup;
import csv;


# 定义添加请求头的方法(目的：让我们的程序不那么容易被发现，更像浏览器)

def getRequest(url):
    # 采用谷歌浏览器的请求头
    header1 = {
        "Host": "movie.douban.com",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36"
    }
    # 采用ie浏览器的请求头
    header2 = {
        "Host": "movie.douban.com",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko"
    }
    # 使用列表存储两个请求头
    listHeaders = [header1, header2];
    # 随机使用一个请求头
    index = random.randrange(0, len(listHeaders));  # 取0和1     index:随机的下标
    realHeader = listHeaders[index];  # 根据随机下标取出的随机请求头
    # 给请求添加请求头
    # 第一个参数： url :访问的网页路径
    # 第二个参数：我们要添加的请求头
    req = request.Request(url=url, headers=realHeader);
    # 将请求返回
    return req;


# 定义一个获取影评数据的方法
def getData(url, contentList):
    # 调用添加请求头的方法，获得一个添加请求头之后的请求
    req = getRequest(url);
    # 使用添加请求头之后的做网络链接
    resp = request.urlopen(req);
    # 使用bs解析
    bs = BeautifulSoup(resp.read(), "html.parser");
    # 获取存放所有评论的div
    comments = bs.select_one("#comments");
    # 获取所有的div评论
    commentList = comments.select(".comment-item");
    # 遍历所有评论
    for comment in commentList:
        # 获取存放作者信息和评价星级的div comment-info
        commentInfo = comment.select_one(".comment-info");
        # 获取作者名称
        author = commentInfo.select_one("a").text;
        # 获取评价的星级(有人没有打分，只写的评论，所以获取的是时间，但是对结果不影响，因为不打分只是少数)
        star = commentInfo.select("span")[1]["title"];
        # 获取评论内容
        comment = comment.select_one(".short").text.replace("\n", "");
        # 将作者  星级  评论封装成字典
        yingping = {"author": author, "star": star, "comment": comment};
        # 将影评添加到字典中
        contentList.append(yingping);
    # 将添加完影评的contentList返回
    return contentList;


# 定义向表格中写入数据的方法
def writeYingPing(contentList):
    with open("寄生虫影评.csv", "w", newline="", encoding="utf-8") as file:
        # 获取csv的写编辑对象(表格写入三列，分别是：作者 星级  评论)
        csvWriter = csv.writer(file);
        # 遍历所有影评
        for item in contentList:
            # [ "张三","推荐","这电影真好看"  ]
            contentInfo = [item["author"], item["star"], item["comment"]];
            # 使用csv每次写一行
            csvWriter.writerow(contentInfo);


# 抓取前五页影评
# 定义一个全局的收集所有影评的列表
contentList = [];
for i in range(5):
    # 每一页的url链接
    # https://movie.douban.com/subject/26581837/comments?start=20&limit=20&sort=new_score&status=P
    url = "https://movie.douban.com/subject/26581837/comments?start=%d&limit=20&sort=new_score&status=P" % (i * 20);
    # 调用获取影评数据的方法
    contentList = getData(url, contentList);
# 调用写入影评的方法
writeYingPing(contentList);



























