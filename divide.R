setwd('D:\\xiong\\Desktop\\深度学习1216')
dat = readLines('5.txt')
#head(dat)
source('generate.R')
#source('nospace.R')

dat <- paste(dat, collapse = "")#先把每行的内容连在一起

library(stringr)
dat2 = str_extract_all(dat, '\\[\\d{1,3}\\]\\s*[^\\[\\s\\*]+')
dat2 = unlist(dat2)
dat3 = str_replace_all(dat2, '\\[\\d{1,3}\\]', '')
#dat3 = str_extract_all(dat2, "[\\u4E00-\\u9FA5]+")
dat4 = str_split(dat3, '[\\s。！？]')
dat5 = str_split(dat3, '。')

data = generate(dat4)
#write(data, file = 'data.txt')
#write(left1, file = 'data.txt')
#txtwrite(dat4)
data1 = nospace(data)
#write(dat,'data0.txt')
#write.csv(dat3,'data.txt')
write(data1, file = 'data55.txt')
#seq2seq,transformer

