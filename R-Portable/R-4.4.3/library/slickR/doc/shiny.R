## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  library(slickR)
#  library(svglite)
#  library(gdtools)
#  library(shiny)

## -----------------------------------------------------------------------------
#  
#  ui <- fluidPage(
#    sidebarLayout(
#      sidebarPanel(
#  
#        sliderInput(inputId = "plot_num",
#                    label = "Number of Plots:",
#                    min = 1, max = 20, value = 5),
#  
#        sliderInput(inputId = "n_obs",
#                    label = "Number of observations:",
#                    min = 10, max = 500, value = 100),
#  
#        shiny::radioButtons('slick_type',
#                            label = 'Carousel Type',
#                            choices = c('single','stack','synch'),
#                            selected = 'single',
#                            inline = TRUE),
#  
#        shiny::verbatimTextOutput('current')
#      ),
#      mainPanel(
#  
#        slickROutput("slick_output",width='100%',height='200px')
#  
#        )
#    )
#  )
#  

## -----------------------------------------------------------------------------
#  server <- function(input, output) {
#  
#  # Create content for the carousel
#  
#  plots <- eventReactive(c(input$n_obs,input$plot_num),{
#  
#  replicate(input$plot_num,{
#  
#       xmlSVG({hist(rnorm(input$n_obs),
#                    col = 'darkgray',
#                    border = 'white')},
#              standalone=TRUE)
#  
#       },simplify = FALSE)
#  })
#  
#  # renderSlickR (We create the slickR objects here)
#  
#    output$slick_output <- renderSlickR({
#  
#      x <- slickR(plots(),
#                  slideId = 'slick1',
#                  height = 600,
#                  width = '50%') +
#        settings(slidesToShow=3,centerMode=TRUE)
#  
#      y <- slickR(plots(),
#                  slideId = 'slick2',
#                  height = 600,
#                  width = '50%') +
#        settings(slidesToShow=3,centerMode=TRUE)
#  
#      switch(input$slick_type,
#             'single' = x,
#             'stack'  = x %stack% y,
#             'synch'  = x %synch% y
#             )
#  
#    })
#  
#  # Observe the active slick
#  
#  # The htmlwidget is observed by shiny and information can be retrieved.
#  
#  # Using the output name you set for the `renderSlick` object in this example
#  # it is `output$slick_output`
#  
#  # Using this you can interact server-side "on click" of the active carousel
#  # by accessing elements in `input$slick_output_current$`
#  
#  # `.clicked`   : The index of the clicked element|
#  # `.relative_clicked`: The relative position of the clicked element|
#  # `.center`    : The index of the center element|
#  # `.total`     : The total number of elements in the carousel|
#  # `.active`    : The ID of the active carousel|
#  
#  # We will store this information in a new reactive environment
#  active_slick <- shiny::reactiveValues()
#  
#  shiny::observeEvent(input$slick_output_current,{
#      active_slick$clicked    <- input$slick_output_current$.clicked
#      active_slick$relative_clicked <- input$slick_output_current$.relative_clicked
#      active_slick$center     <- input$slick_output_current$.center
#      active_slick$total      <- input$slick_output_current$.total
#      active_slick$active     <- input$slick_output_current$.slide
#  })
#  
#  # Show in the UI the values in active_slick
#  
#  output$current <- renderText({
#    l <- unlist(shiny::reactiveValuesToList(active_slick))
#    paste(gsub('_',' ', names(l)), l, sep=' = ', collapse='\n')
#  })
#  
#  }

## -----------------------------------------------------------------------------
#  shinyApp(ui = ui, server = server)
#  

