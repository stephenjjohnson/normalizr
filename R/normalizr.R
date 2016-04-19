normalize <- function(myData, minData=min(myData), maxData=max(myData), minNorm=0, maxNorm=1){
        # Normalizes data from minData-maxData to the range minNorm-maxNorm
        minNorm + ((myData - minData) * (maxNorm - minNorm) / (maxData - minData))
}
