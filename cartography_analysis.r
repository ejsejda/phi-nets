#R script for running cartography analysis on the given network file. Here for F. graminearum network file.
#it can be adopted for a given connected component of the network given appropriate connected component network (edge) file is available

install.packages("rnetcarto")
library("rnetcarto")
fg<-read.csv("new_FGids.txt", header= FALSE, sep = "\t")
options(max.print =1000000); capture.output(netcarto(fg, seed = as.integer(floor(runif(1, 1, 100000001))), iterfac = 1, coolingfac = 0.995, bipartite = FALSE),file = "newFG_ids.out")
