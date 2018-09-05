library(tidyverse)
library(glue)
library(rnaturalearth)
library(shiny)


# construct world map
world <- ne_countries(returnclass="sf")
g <- ggplot(world) +
    geom_sf(fill="black", colour="grey20") +
    theme_minimal()

# apply projection based on input
shinyServer(function(input, output) {
   
  output$plot <- renderPlot({
      
      g + coord_sf(crs=glue("+proj={input$proj}"))
    
  })
  
})
