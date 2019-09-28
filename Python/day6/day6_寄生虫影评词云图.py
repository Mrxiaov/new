# 步骤：
#     1. 读取表格中的评论内容
#     2. 使用结巴分词对评论切割
#     3. 根据分词的关键词结果生成词云图
import csv;
import jieba;
import numpy;
from PIL import Image;
from wordcloud import WordCloud;


# 读取表格评论内容
def getDataFromCsv():
    with open("寄生虫影评.csv", "r", encoding="utf-8") as file:
        # 定义存储所有影评的列表
        contentList = [];
        # 获取csv的读编辑对象
        csvReader = csv.reader(file);
        # 定义星级登记库
        stars = ["力荐", "推荐", "还行", "较差", "很差"];
        # 遍历读取csvReader中的内容
        for item in csvReader:
            # 只获取打过分的影评
            if (item[1] in stars):
                contentList.append(item[2]);
        # contentList:只有评论(没打分的不要)
        return contentList;


# 根据影评生成词云图的方法
def generateWordCloud():
    # 调用获取表格影评内容的方法，返回所有影评结果
    contentList = getDataFromCsv();
    # 将所有的评论拼接成一个完整的字符串
    comment = "";
    for item in contentList:
        comment = comment + item;
    # 使用结巴分词对完整的评论进行分词切割
    cut_word = " ".join(jieba.cut(comment));
    # 根据结巴分词结果生成词云图
    # 定义要生成词云图的轮廓  （通过numpy和PIL包里面的Image处理轮廓图片）
    image = numpy.array(Image.open("ikun.jpg"));
    # font_path:电脑自带的字体路径（生成词云图中关键词的字体样式）
    # background_color:图片的背景颜色
    # mak:制定词云的形状
    # generate(cut_word):根据结巴分词生成的词云图片
    wordCloud = WordCloud(
        font_path="C:/Windows/Fonts/msyhbd.ttc",
        # background_color="white",
        mask=image
    ).generate(cut_word)
    # 生成本地词云图片
    wordCloud.to_file("上海堡垒词云图.jpg");
    # 运行报错  module 'matplotlib' has no attribute 'verbose'
    # 解决方案：file->settings->搜索tools->python scientific-> 将show plots in toolswindow前面的对号去掉，点击ok


# 调用生成词云图的方法
generateWordCloud()
