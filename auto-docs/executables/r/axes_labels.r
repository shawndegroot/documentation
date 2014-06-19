library(plotly)

p <- plotly(username='TestBot', key='r1neazxo9w')

trace1 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(8, 7, 6, 5, 4, 3, 2, 1, 0), 
  type = "scatter"
)
trace2 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  type = "scatter"
)
data <- list(trace1, trace2)
layout <- list(
  xaxis = list(
    title = "AXIS TITLE", 
    showticklabels = TRUE, 
    tickangle = 45, 
    exponentformat = "e", 
    showexponent = "All", 
    titlefont = list(
      family = "Arial, sans-serif", 
      size = 18, 
      color = "lightgrey"
    ), 
    tickfont = list(
      family = "Old Standard TT, serif", 
      size = 14, 
      color = "black"
    )
  ), 
  yaxis = list(
    title = "AXIS TITLE", 
    showticklabels = TRUE, 
    tickangle = 45, 
    exponentformat = "e", 
    showexponent = "All", 
    titlefont = list(
      family = "Arial, sans-serif", 
      size = 18, 
      color = "lightgrey"
    ), 
    tickfont = list(
      family = "Old Standard TT, serif", 
      size = 14, 
      color = "black"
    )
  )
)

response <- p$plotly(data, kwargs=list(layout=layout, filename="axes-labels", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename