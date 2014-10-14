library(knitr)
require(rCharts)
library(slidify)
# Read airtraffic data
# auAirTrafficRaw <- read.csv("auAirTraffic_V2.csv")

# Remove the records without blank Ranks
# auAirTraffic <- subset(auAirTrafficRaw, RANK != '-')

# Stacked bar plots
output$stkChart <- renderChart({
  auAirTraffic = as.data.frame(auAirTraffic)
  stkPlot <- nPlot(AIRTRAFFIC_TOTAL ~ YEAR, group = 'STATECODE', data = subset(auAirTraffic, TRAFFICTYPE == input$stktrafficType & YEAR == input$stkyear & AIRTRAFFIC_TOTAL > 0), 
                   type = input$type, dom = 'stkChart', width = 600)                   
  stkPlot$yAxis(tickFormat = "#! function(d) {return '' + d3.format(',.')(d)} !#")
  stkPlot$chart(margin = list(left = 100))
  stkPlot$yAxis( axisLabel = paste0(input$stktrafficType, " passenger - Movements (millions)"), width = 80)
  #stkPlot$chart(color = c('brown', 'blue', '#594c26', 'green'), stacked = input$stack)
  return(stkPlot)
}) 

# Scatterd plots
output$sctChart <- renderChart({
  auAirports <- subset(auAirTraffic, TRAFFICTYPE == input$scttrafficType & STATECODE == input$sctstate & AIRTRAFFIC_TOTAL > 0,)
  sccplot <- nPlot(AIRTRAFFIC_TOTAL ~ YEAR, group = 'AIRPORT', data = auAirports, 
                   type='scatterChart', dom = 'sctChart', width = 600)
  sccplot$yAxis(axisLabel = paste0(input$sctstate,"-", input$scttrafficType, " Movements (millions)"), tickFormat = "#! function(d) {return '' + d} !#")
  sccplot$xAxis( axisLabel = "Year")
  sccplot$chart(size = '#! function(d){return d.AIRTRAFFIC_TOTAL} !#')
  sccplot$yAxis(tickFormat = "#! function(d) {return '' + d3.format(',.')(d)} !#")
  sccplot$chart(margin = list(right = 100))                
  return(sccplot)
})

#select = c(YEAR, STATE, TRAFFICTYPE, AIRTRAFFIC_TOTAL))

# Scatterd plots
output$sctChart1 <- renderChart({
  auAirports <- subset(auAirTraffic, TRAFFICTYPE == input$sct1trafficType & AIRTRAFFIC_TOTAL > 0,)
  sccplot1 <- nPlot(AIRTRAFFIC_TOTAL ~ YEAR, group = 'STATECODE', data = auAirports, 
                    type='scatterChart', dom = 'sctChart1', width = 600)
  sccplot1$yAxis(axisLabel = paste0(input$sct1trafficType, " - Movements (millions)"), tickFormat = "#! function(d) {return '' + d} !#")
  sccplot1$xAxis( axisLabel = "Year")
  sccplot1$chart(size = '#! function(d){return d.AIRTRAFFIC_TOTAL} !#')
  sccplot1$yAxis(tickFormat = "#! function(d) {return '' + d3.format(',.')(d)} !#")
  sccplot1$chart(margin = list(right = 100))                
  return(sccplot1)
})
