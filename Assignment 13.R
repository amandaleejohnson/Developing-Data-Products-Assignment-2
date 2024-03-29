##Assignment 13 - Developing Data Products

setwd() #Masked for Github upload

######################################################
##INSTRUCTIONS########################################
######################################################

# Create a web page using R Markdown that features a map created with Leaflet.
# Host your webpage on either GitHub Pages, RPubs, or NeoCities.
# Your webpage must contain the date that you created the document, 
# and it must contain a map created with Leaflet. We would love to see you show off your creativity!

# The rubric contains the following two questions:
    #Does the web page feature a date and is this date less than two months before the date that you're grading this assignment?
    #Does the web page feature an interactive map that appears to have been created with Leaflet?

######################################################
######################################################

#Read in the data:
    disp = read.csv("./Dispensaries in OKC.csv", header = T)

##Make map:
    library(leaflet)
    #Example: Draws a map where the cirlce on each city is proportional 
    #to the population of that city
    mjicon = makeIcon(
        iconUrl = "https://previews.123rf.com/images/mironovkonstantin/mironovkonstantin1803/mironovkonstantin180300085/98020093-marijuana-leaf-clipart-green-cannabis-leaf-illustration-gray-shadow-.jpg", 
        iconWidth = 20, iconHeight = 20, 
        iconAnchorX = 20, iconAnchorY = 16)
    

    disp %>%
        leaflet() %>%
        addTiles() %>%
        addMarkers(icon = mjicon, popup = disp$Business, clusterOptions = markerClusterOptions())
    
    

    
