txtwrite <- function(dat){
  n = length(dat)
  for(i in 0:(n%/%1000-1)){
    data = dat[(1+i*1000):(i*1000+1000)]
    data = generate(data)
    write(data, file = sprintf("data%d.txt",i))
  }
}