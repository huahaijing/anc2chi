nospace <- function(data){
  library(stringr)
  data1 = str_replace_all(data, "（\\S+）", '')
  
  data1 = unlist(data1)
  data1 = str_replace_all(data1, "[“”‘’]", '')
  data1 = unlist(data1)
  
  data1 = str_subset(data1, "^\\t$", negate = TRUE)
  return(data1)
}
