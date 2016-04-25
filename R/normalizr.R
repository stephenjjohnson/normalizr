#     normalizr - an R function to normalize data between arbitrary bounds
#     Copyright (C) 2016 Stephen J. Johnson
# 
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
## normalize ---------------------------------------------------------------

#' Normalize data
#' 
#' Normalizes x from minData-maxData to the range minNorm-maxNorm
#' 
#' @param x A vector of numbers
#' @param minData Data value to scale to minNorm
#' @param maxData Data value to scale to maxNorm
#' @param minNorm Value to scale minData to
#' @param maxNorm Value to scale maxData to
#' @return A vector scaled with minData-maxData mapped to the range minNorm-maxNorm
#' 
#' @examples
#' normalize(0:10)  ## returns 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
#' normalize(0:10, maxNorm = 100)  ## returns 0  10  20  30  40  50  60  70  80  90 100
#' 
#' @export
normalize <- function(x, minData=min(x), maxData=max(x), minNorm=0, maxNorm=1){
     minNorm + ((x - minData) * (maxNorm - minNorm) / (maxData - minData))
}

