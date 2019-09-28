import jieba;#导入结巴分词
str1 = "这个人好像一条狗啊";
str2 = "我很帅而且很有才华性格儒雅随和";
#使用结巴分词的分词功能
cut_word = jieba.cut(str2);
#使用空格对切割完之后的词做拼接
print(" ".join(cut_word));