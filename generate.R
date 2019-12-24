generate <- function(dat4){
  n = length(dat4)
  left1 = dat4[seq(1,n,2)]
  right1 = dat4[seq(2,n,2)]
  l1 = c()
  r1 = c()
  for(i in 1:(n%/%2)){
    l0 = left1[[i]]
    r0 = right1[[i]]
    if(length(l0)==length(r0)){
      l1 = c(l1,l0)
      r1 = c(r1,r0)
    }
  }
  data = data.frame(l = l1, r = r1)
  data = paste(l1,r1,sep = '\t')
  return(data)
  #write(data, file = 'f.txt', sep = '\t')
}