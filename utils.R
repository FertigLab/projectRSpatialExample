library(viridis)
myColorRamp <- function(values,palette=viridis(255)) {
    values[is.na(values)]<-0
    #print(values)
    if(min(values)<0){
        values<-values+abs(min(values))
    }
    v <- (values - min(values))/diff(range(values))
    #v <- values/diff(range(values))
    #print(v)
    x <- colorRamp(palette)(v)
    #print(x)
    rgb(x[,1], x[,2], x[,3], maxColorValue = 255)
}
