library(shiny)

shinyUI(fluidPage(
    fluidRow(
        align="center",
        h1("A Distorted Planet"),
        plotOutput("plot"),
        tags$br(),
        selectInput(
            inputId="proj",
            label="Choose projection",
            choices=c(
                "Albers Equal Area"="aea",
                "Azimuthal Equidistant"="aeqd",
                "Cassini-Soldner"="cass",
                "Equal Area Cylindrical"="cea",
                "Eckert I"="eck1",
                "Eckert II"="eck2",
                "Eckert III"="eck3",
                "Eckert IV"="eck4",
                "Eckert V"="eck5",
                "Eckert VI"="eck6",
                "Equidistand Cylindrical"="eqc",
                "Gall Stereographic"="gall",
                "Geostationary Satellite View"="geos +h=35785831",
                "Goode Homolosine"="goode",
                "Lambert Azimuthal Equal Area"="laea",
                "Mercator"="merc",
                "Miller Cylindrical"="mill",
                "Mollweide"="moll",
                "Orthographic"="ortho",
                "Robinson"="robin",
                "Sinusoidal"="sinu",
                "Transverse Mercator"="tmerc",
                "van der Grinten"="vandg",
                "Wagner I"="wag1",
                "Wagner II"="wag2",
                "Wagner III"="wag3",
                "Wagner IV"="wag4",
                "Wagner V"="wag5",
                "Wagner VI"="wag6",
                "Wagner VII"="wag7"),
            selected="ortho"
        )
    ),
    
    fluidRow(
        column(
            4, 
            offset=4,
            tags$br(),
            includeMarkdown("include.md"),
            tags$style(type='text/css', "p {text-align:justify;}")
        )
    )
   
))
